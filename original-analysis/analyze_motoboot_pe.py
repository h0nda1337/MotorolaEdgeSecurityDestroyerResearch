from __future__ import annotations

import hashlib
import shutil
import struct
import sys
from pathlib import Path


MACHINES = {
    0x014C: "x86",
    0x01C0: "ARM",
    0x01C2: "ARM Thumb",
    0x8664: "x86-64",
    0xAA64: "ARM64",
}

SUBSYSTEMS = {
    10: "EFI application",
    11: "EFI boot-service driver",
    12: "EFI runtime driver",
}

TERMS = [
    "fastboot",
    "blankflash",
    "unlock",
    "get_unlock_data",
    "cid_prov_req",
    "read_sv",
    "securestate",
    "oem_locked",
    "oem unlock",
    "channelid",
    "carrier",
    "devinfo",
    "flashing",
    "signature",
    "token",
    "motorola",
]


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


def ascii_string_at(data: bytes, position: int) -> str:
    start = position
    end = position

    while start > 0 and 0x20 <= data[start - 1] <= 0x7E:
        start -= 1

    while end < len(data) and 0x20 <= data[end] <= 0x7E:
        end += 1

    text = data[start:end].decode("ascii", errors="replace")
    return text[:300]


def find_offsets(data: bytes, needle: bytes) -> list[int]:
    result: list[int] = []
    lowered = data.lower()
    needle = needle.lower()
    cursor = 0

    while True:
        position = lowered.find(needle, cursor)

        if position < 0:
            break

        result.append(position)
        cursor = position + 1

    return result


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit(
            "Uso: python analyze_motoboot_pe.py "
            "<directorio_dump> <directorio_salida>"
        )

    dump = Path(sys.argv[1]).resolve()
    output = Path(sys.argv[2]).resolve()
    output.mkdir(parents=True, exist_ok=True)

    candidates: list[tuple[int, Path, bytes]] = []

    for path in dump.rglob("*"):
        if not path.is_file():
            continue

        try:
            with path.open("rb") as stream:
                if stream.read(2) != b"MZ":
                    continue

            data = path.read_bytes()
        except OSError:
            continue

        score = sum(
            1 for term in TERMS
            if term.encode("ascii").lower() in data.lower()
        )

        candidates.append((score, path, data))

    if not candidates:
        raise SystemExit("No se encontró ninguna imagen PE/MZ")

    candidates.sort(
        key=lambda item: (item[0], -len(item[2])),
        reverse=True,
    )

    score, source, data = candidates[0]

    if b"get_unlock_data" not in data.lower():
        raise SystemExit(
            "Encontré imágenes PE, pero ninguna contiene "
            "get_unlock_data"
        )

    canonical = output / "MotoBootModule.efi"
    shutil.copy2(source, canonical)

    if len(data) < 0x40:
        raise SystemExit("PE demasiado pequeño")

    pe_offset = struct.unpack_from("<I", data, 0x3C)[0]

    if data[pe_offset:pe_offset + 4] != b"PE\x00\x00":
        raise SystemExit("Firma PE inválida")

    coff = pe_offset + 4

    (
        machine,
        section_count,
        timestamp,
        pointer_symbols,
        symbol_count,
        optional_size,
        characteristics,
    ) = struct.unpack_from("<HHIIIHH", data, coff)

    optional = coff + 20
    optional_magic = struct.unpack_from("<H", data, optional)[0]

    entry_rva = struct.unpack_from("<I", data, optional + 0x10)[0]

    if optional_magic == 0x10B:
        pe_kind = "PE32"
        image_base = struct.unpack_from(
            "<I", data, optional + 0x1C
        )[0]

    elif optional_magic == 0x20B:
        pe_kind = "PE32+"
        image_base = struct.unpack_from(
            "<Q", data, optional + 0x18
        )[0]

    else:
        raise SystemExit(
            f"Optional Header desconocido: 0x{optional_magic:X}"
        )

    section_alignment = struct.unpack_from(
        "<I", data, optional + 0x20
    )[0]
    file_alignment = struct.unpack_from(
        "<I", data, optional + 0x24
    )[0]
    size_image = struct.unpack_from(
        "<I", data, optional + 0x38
    )[0]
    size_headers = struct.unpack_from(
        "<I", data, optional + 0x3C
    )[0]
    subsystem = struct.unpack_from(
        "<H", data, optional + 0x44
    )[0]

    section_table = optional + optional_size
    sections: list[dict[str, int | str]] = []

    for index in range(section_count):
        offset = section_table + index * 40

        (
            raw_name,
            virtual_size,
            virtual_address,
            raw_size,
            raw_pointer,
            reloc_pointer,
            line_pointer,
            reloc_count,
            line_count,
            section_flags,
        ) = struct.unpack_from("<8sIIIIIIHHI", data, offset)

        name = raw_name.split(b"\x00", 1)[0].decode(
            "ascii", errors="replace"
        )

        permissions = "".join([
            "R" if section_flags & 0x40000000 else "-",
            "W" if section_flags & 0x80000000 else "-",
            "X" if section_flags & 0x20000000 else "-",
        ])

        sections.append({
            "name": name,
            "virtual_size": virtual_size,
            "virtual_address": virtual_address,
            "raw_size": raw_size,
            "raw_pointer": raw_pointer,
            "flags": section_flags,
            "permissions": permissions,
        })

    def map_offset(file_offset: int):
        if file_offset < size_headers:
            return file_offset, "HEADERS"

        for section in sections:
            start = int(section["raw_pointer"])
            end = start + int(section["raw_size"])

            if start <= file_offset < end:
                rva = (
                    int(section["virtual_address"])
                    + file_offset
                    - start
                )
                return rva, str(section["name"])

        return None, "OVERLAY/UNKNOWN"

    report: list[str] = []

    def emit(text: str = "") -> None:
        print(text)
        report.append(text)

    emit(f"Fuente: {source}")
    emit(f"Archivo canónico: {canonical}")
    emit(f"Tamaño: {len(data):,} bytes / 0x{len(data):X}")
    emit(f"SHA-256: {sha256(data)}")
    emit(f"Puntuación de términos: {score}")
    emit()
    emit("=== PE ===")
    emit(f"Tipo: {pe_kind}")
    emit(
        f"Máquina: 0x{machine:04X} "
        f"({MACHINES.get(machine, 'desconocida')})"
    )
    emit(f"Secciones: {section_count}")
    emit(f"ImageBase: 0x{image_base:X}")
    emit(f"Entry RVA: 0x{entry_rva:X}")
    emit(f"Entry VA: 0x{image_base + entry_rva:X}")
    emit(f"SizeOfImage: 0x{size_image:X}")
    emit(f"SizeOfHeaders: 0x{size_headers:X}")
    emit(f"SectionAlignment: 0x{section_alignment:X}")
    emit(f"FileAlignment: 0x{file_alignment:X}")
    emit(
        f"Subsystem: {subsystem} "
        f"({SUBSYSTEMS.get(subsystem, 'otro')})"
    )
    emit()
    emit("=== SECCIONES ===")

    for section in sections:
        emit(
            f"{section['name']:<8} "
            f"RVA=0x{int(section['virtual_address']):08X} "
            f"VSZ=0x{int(section['virtual_size']):X} "
            f"RAW=0x{int(section['raw_pointer']):08X}"
            f"+0x{int(section['raw_size']):X} "
            f"{section['permissions']}"
        )

    hit_rows = [
        "encoding\tterm\tfile_offset\trva\tva\tsection\ttext"
    ]

    emit()
    emit("=== TÉRMINOS ===")

    for term in TERMS:
        for position in find_offsets(
            data, term.encode("ascii")
        )[:20]:
            rva, section = map_offset(position)

            if rva is None:
                rva_text = "-"
                va_text = "-"
            else:
                rva_text = f"0x{rva:X}"
                va_text = f"0x{image_base + rva:X}"

            text = ascii_string_at(data, position)
            safe_text = text.replace("\t", " ").replace("\r", " ")

            emit(
                f"{term:<18} "
                f"file=0x{position:X} "
                f"RVA={rva_text} "
                f"VA={va_text} "
                f"section={section} "
                f"text={safe_text!r}"
            )

            hit_rows.append(
                f"ASCII\t{term}\t0x{position:X}\t"
                f"{rva_text}\t{va_text}\t{section}\t{safe_text}"
            )

    (output / "motoboot-pe-layout.txt").write_text(
        "\n".join(report) + "\n",
        encoding="utf-8",
    )

    (output / "motoboot-string-hits.tsv").write_text(
        "\n".join(hit_rows) + "\n",
        encoding="utf-8",
    )

    print()
    print(
        "Informe:",
        output / "motoboot-pe-layout.txt",
    )
    print(
        "Cadenas:",
        output / "motoboot-string-hits.tsv",
    )


if __name__ == "__main__":
    main()

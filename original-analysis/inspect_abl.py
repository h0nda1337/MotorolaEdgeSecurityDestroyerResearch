from __future__ import annotations

import hashlib
import struct
import sys
from pathlib import Path


PT_NAMES = {
    0: "PT_NULL",
    1: "PT_LOAD",
    2: "PT_DYNAMIC",
    3: "PT_INTERP",
    4: "PT_NOTE",
    5: "PT_SHLIB",
    6: "PT_PHDR",
    7: "PT_TLS",
}


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit(
            "Uso: python inspect_abl.py <abl.elf> <salida>"
        )

    source = Path(sys.argv[1]).resolve()
    output = Path(sys.argv[2]).resolve()
    output.mkdir(parents=True, exist_ok=True)

    data = source.read_bytes()

    if data[:4] != b"\x7fELF":
        raise SystemExit("El archivo no comienza con una cabecera ELF")

    elf_class = data[4]
    endian = data[5]

    if elf_class != 2:
        raise SystemExit(f"Se esperaba ELF64; clase encontrada: {elf_class}")

    if endian != 1:
        raise SystemExit("Se esperaba ELF little-endian")

    e_type = struct.unpack_from("<H", data, 0x10)[0]
    e_machine = struct.unpack_from("<H", data, 0x12)[0]
    e_entry = struct.unpack_from("<Q", data, 0x18)[0]
    e_phoff = struct.unpack_from("<Q", data, 0x20)[0]
    e_shoff = struct.unpack_from("<Q", data, 0x28)[0]
    e_phentsize = struct.unpack_from("<H", data, 0x36)[0]
    e_phnum = struct.unpack_from("<H", data, 0x38)[0]
    e_shentsize = struct.unpack_from("<H", data, 0x3A)[0]
    e_shnum = struct.unpack_from("<H", data, 0x3C)[0]

    lines: list[str] = []

    def report(text: str = "") -> None:
        print(text)
        lines.append(text)

    report(f"Archivo: {source}")
    report(f"Tamaño: {len(data):,} bytes / 0x{len(data):X}")
    report(f"SHA-256: {sha256(data)}")
    report()
    report("=== ELF ===")
    report(f"Tipo: 0x{e_type:X}")
    report(
        f"Máquina: {e_machine} "
        f"({'AArch64' if e_machine == 183 else 'desconocida'})"
    )
    report(f"Entry point: 0x{e_entry:X}")
    report(f"Program headers: offset=0x{e_phoff:X}, cantidad={e_phnum}")
    report(f"Section headers: offset=0x{e_shoff:X}, cantidad={e_shnum}")
    report()

    report("=== PROGRAM HEADERS ===")

    for index in range(e_phnum):
        offset = e_phoff + index * e_phentsize

        if offset + 56 > len(data):
            raise SystemExit(
                f"Program header {index} fuera del archivo"
            )

        (
            p_type,
            p_flags,
            p_offset,
            p_vaddr,
            p_paddr,
            p_filesz,
            p_memsz,
            p_align,
        ) = struct.unpack_from("<IIQQQQQQ", data, offset)

        name = PT_NAMES.get(p_type, f"PT_{p_type:X}")

        report(
            f"[{index:02d}] {name:<12} "
            f"flags=0x{p_flags:X} "
            f"file=0x{p_offset:X}+0x{p_filesz:X} "
            f"vaddr=0x{p_vaddr:X} "
            f"paddr=0x{p_paddr:X} "
            f"mem=0x{p_memsz:X} "
            f"align=0x{p_align:X}"
        )

    report()
    report("=== UEFI FIRMWARE VOLUMES ===")

    position = 0
    fv_index = 0

    while True:
        signature = data.find(b"_FVH", position)

        if signature < 0:
            break

        fv_start = signature - 0x28

        if fv_start < 0 or fv_start + 0x38 > len(data):
            position = signature + 1
            continue

        fv_length = struct.unpack_from("<Q", data, fv_start + 0x20)[0]
        header_length = struct.unpack_from(
            "<H", data, fv_start + 0x30
        )[0]
        revision = data[fv_start + 0x37]
        fv_end = fv_start + fv_length

        if (
            fv_length < header_length
            or fv_length == 0
            or fv_end > len(data)
        ):
            report(
                f"Firma candidata en 0x{signature:X}, "
                "pero la longitud no es válida"
            )
            position = signature + 1
            continue

        fv_index += 1
        filename = f"abl-fv-{fv_index:02d}.bin"
        destination = output / filename
        volume = data[fv_start:fv_end]
        destination.write_bytes(volume)

        report(
            f"[{fv_index:02d}] inicio=0x{fv_start:X} "
            f"firma=0x{signature:X} "
            f"longitud=0x{fv_length:X} "
            f"header=0x{header_length:X} "
            f"revision={revision} "
            f"fin=0x{fv_end:X}"
        )
        report(f"     archivo={destination}")
        report(f"     sha256={sha256(volume)}")

        position = fv_end

    if fv_index == 0:
        report("No se encontró ningún volumen UEFI válido")

    report()
    report("=== TÉRMINOS ASCII Y UTF-16LE ===")

    terms = [
        "fastboot",
        "get_unlock_data",
        "cid_prov_req",
        "read_sv",
        "blankflash",
        "securestate",
        "oem_locked",
        "oem unlock",
        "unlock",
        "flashing",
        "signature",
        "token",
        "motorola",
        "channelid",
        "carrier",
        "devinfo",
        "storsec",
        "keymaster",
    ]

    lower = data.lower()

    for term in terms:
        ascii_needle = term.encode("ascii").lower()
        utf16_needle = term.encode("utf-16le").lower()

        ascii_offsets: list[int] = []
        utf16_offsets: list[int] = []

        cursor = 0
        while True:
            found = lower.find(ascii_needle, cursor)
            if found < 0:
                break
            ascii_offsets.append(found)
            cursor = found + 1

        cursor = 0
        while True:
            found = lower.find(utf16_needle, cursor)
            if found < 0:
                break
            utf16_offsets.append(found)
            cursor = found + 2

        ascii_text = (
            ", ".join(f"0x{x:X}" for x in ascii_offsets[:25])
            if ascii_offsets
            else "-"
        )
        utf16_text = (
            ", ".join(f"0x{x:X}" for x in utf16_offsets[:25])
            if utf16_offsets
            else "-"
        )

        report(
            f"{term:<18} ASCII={ascii_text} UTF16LE={utf16_text}"
        )

    report_file = output / "abl-layout.txt"
    report_file.write_text(
        "\n".join(lines) + "\n",
        encoding="utf-8"
    )

    print()
    print(f"Informe: {report_file}")


if __name__ == "__main__":
    main()

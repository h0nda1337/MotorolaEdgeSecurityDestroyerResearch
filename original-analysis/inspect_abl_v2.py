from __future__ import annotations

import hashlib
import struct
import sys
from pathlib import Path


MACHINE_NAMES = {
    3: "x86",
    40: "ARM",
    62: "x86-64",
    183: "AArch64",
}

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


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit(
            "Uso: python inspect_abl_v2.py <abl.elf> <salida>"
        )

    source = Path(sys.argv[1]).resolve()
    output = Path(sys.argv[2]).resolve()
    output.mkdir(parents=True, exist_ok=True)

    data = source.read_bytes()

    if data[:4] != b"\x7fELF":
        raise SystemExit("El archivo no empieza con una cabecera ELF")

    elf_class = data[4]
    endian = data[5]

    if endian != 1:
        raise SystemExit(
            f"Endianness ELF no compatible: {endian}"
        )

    e_type = struct.unpack_from("<H", data, 0x10)[0]
    e_machine = struct.unpack_from("<H", data, 0x12)[0]

    if elf_class == 1:
        class_name = "ELF32"
        e_entry = struct.unpack_from("<I", data, 0x18)[0]
        e_phoff = struct.unpack_from("<I", data, 0x1C)[0]
        e_shoff = struct.unpack_from("<I", data, 0x20)[0]
        e_phentsize = struct.unpack_from("<H", data, 0x2A)[0]
        e_phnum = struct.unpack_from("<H", data, 0x2C)[0]
        e_shentsize = struct.unpack_from("<H", data, 0x2E)[0]
        e_shnum = struct.unpack_from("<H", data, 0x30)[0]

    elif elf_class == 2:
        class_name = "ELF64"
        e_entry = struct.unpack_from("<Q", data, 0x18)[0]
        e_phoff = struct.unpack_from("<Q", data, 0x20)[0]
        e_shoff = struct.unpack_from("<Q", data, 0x28)[0]
        e_phentsize = struct.unpack_from("<H", data, 0x36)[0]
        e_phnum = struct.unpack_from("<H", data, 0x38)[0]
        e_shentsize = struct.unpack_from("<H", data, 0x3A)[0]
        e_shnum = struct.unpack_from("<H", data, 0x3C)[0]

    else:
        raise SystemExit(
            f"Clase ELF desconocida: {elf_class}"
        )

    lines: list[str] = []

    def report(text: str = "") -> None:
        print(text)
        lines.append(text)

    report(f"Archivo: {source}")
    report(f"Tamaño: {len(data):,} bytes / 0x{len(data):X}")
    report(f"SHA-256: {digest(data)}")
    report()
    report("=== ELF ===")
    report(f"Clase: {class_name}")
    report(f"Tipo: 0x{e_type:X}")
    report(
        f"Máquina: {e_machine} "
        f"({MACHINE_NAMES.get(e_machine, 'desconocida')})"
    )
    report(f"Entry point: 0x{e_entry:X}")
    report(
        f"Program headers: offset=0x{e_phoff:X}, "
        f"tamaño={e_phentsize}, cantidad={e_phnum}"
    )
    report(
        f"Section headers: offset=0x{e_shoff:X}, "
        f"tamaño={e_shentsize}, cantidad={e_shnum}"
    )
    report()

    report("=== PROGRAM HEADERS ===")

    for index in range(e_phnum):
        offset = e_phoff + index * e_phentsize

        if elf_class == 1:
            if offset + 32 > len(data):
                raise SystemExit(
                    f"Program header {index} fuera del archivo"
                )

            (
                p_type,
                p_offset,
                p_vaddr,
                p_paddr,
                p_filesz,
                p_memsz,
                p_flags,
                p_align,
            ) = struct.unpack_from("<IIIIIIII", data, offset)

        else:
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

        report(
            f"[{index:02d}] "
            f"{PT_NAMES.get(p_type, f'PT_{p_type:X}'):<12} "
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

        fv_length = struct.unpack_from(
            "<Q", data, fv_start + 0x20
        )[0]

        header_length = struct.unpack_from(
            "<H", data, fv_start + 0x30
        )[0]

        revision = data[fv_start + 0x37]
        fv_end = fv_start + fv_length

        valid = (
            fv_length > 0
            and header_length >= 0x38
            and header_length <= fv_length
            and fv_end <= len(data)
        )

        if not valid:
            report(
                f"Firma candidata en 0x{signature:X}, "
                "pero la cabecera FV no es válida"
            )
            position = signature + 1
            continue

        fv_index += 1
        volume = data[fv_start:fv_end]

        destination = output / f"abl-fv-{fv_index:02d}.bin"
        destination.write_bytes(volume)

        report(
            f"[{fv_index:02d}] "
            f"inicio=0x{fv_start:X} "
            f"firma=0x{signature:X} "
            f"longitud=0x{fv_length:X} "
            f"header=0x{header_length:X} "
            f"revision={revision} "
            f"fin=0x{fv_end:X}"
        )
        report(f"     archivo={destination}")
        report(f"     sha256={digest(volume)}")

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

    lowered = data.lower()

    for term in terms:
        ascii_needle = term.encode("ascii").lower()
        utf16_needle = term.encode("utf-16le").lower()

        ascii_offsets: list[int] = []
        utf16_offsets: list[int] = []

        cursor = 0
        while True:
            found = lowered.find(ascii_needle, cursor)
            if found < 0:
                break
            ascii_offsets.append(found)
            cursor = found + 1

        cursor = 0
        while True:
            found = lowered.find(utf16_needle, cursor)
            if found < 0:
                break
            utf16_offsets.append(found)
            cursor = found + 2

        ascii_text = (
            ", ".join(f"0x{x:X}" for x in ascii_offsets[:30])
            if ascii_offsets else "-"
        )
        utf16_text = (
            ", ".join(f"0x{x:X}" for x in utf16_offsets[:30])
            if utf16_offsets else "-"
        )

        report(
            f"{term:<18} "
            f"ASCII={ascii_text} "
            f"UTF16LE={utf16_text}"
        )

    report_path = output / "abl-layout.txt"
    report_path.write_text(
        "\n".join(lines) + "\n",
        encoding="utf-8",
    )

    print()
    print(f"Informe: {report_path}")


if __name__ == "__main__":
    main()

from __future__ import annotations

import hashlib
import struct
import sys
from pathlib import Path

MAGIC = b"SINGLE_N_LONELY"
END_MAGIC = b"LONELY_N_SINGLE"
ALIGNMENT = 4096
MAX_ENTRIES = 64


def clean_c_string(raw: bytes) -> bytes:
    return raw.split(b"\x00", 1)[0]


def classify(header: bytes) -> str:
    if header.startswith(b"\x7fELF"):
        return "ELF"
    if header.startswith(b"MZ"):
        return "PE-COFF"
    if b"_FVH" in header[:0x100]:
        return "UEFI-FV"
    if header.startswith(b"ANDROID!"):
        return "ANDROID-BOOT"
    if header.startswith(b"AVB0"):
        return "AVB"
    return "BIN"


def safe_filename(original: str, index: int) -> str:
    normalized = original.replace("\\", "/")
    base = Path(normalized).name.strip()

    if not base or base in {".", ".."}:
        base = f"entry_{index:02d}.bin"

    allowed = set(
        "abcdefghijklmnopqrstuvwxyz"
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        "0123456789._-"
    )
    base = "".join(c if c in allowed else "_" for c in base)

    return f"{index:02d}_{base}"


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit(
            "Uso: python extract_moto_bootloader.py "
            "<bootloader.img> <directorio_salida>"
        )

    source = Path(sys.argv[1]).resolve()
    output = Path(sys.argv[2]).resolve()

    if not source.is_file():
        raise SystemExit(f"No existe el archivo: {source}")

    output.mkdir(parents=True, exist_ok=True)

    file_size = source.stat().st_size
    manifest_rows: list[str] = [
        "index\tname\textracted_name\tdata_offset\t"
        "size\tpadding\tsha256\ttype"
    ]

    with source.open("rb") as f:
        global_header = f.read(256)

        if clean_c_string(global_header) != MAGIC:
            raise SystemExit(
                "Formato no compatible: no contiene SINGLE_N_LONELY"
            )

        print(f"Contenedor: {source}")
        print(f"Tamaño: {file_size:,} bytes")
        print()

        found_terminator = False

        for index in range(1, MAX_ENTRIES + 1):
            entry_header_offset = f.tell()

            raw_name = f.read(248)
            raw_size = f.read(8)

            if len(raw_name) != 248 or len(raw_size) != 8:
                raise SystemExit(
                    f"Cabecera truncada en 0x{entry_header_offset:X}"
                )

            name_bytes = clean_c_string(raw_name)
            name = name_bytes.decode("ascii", errors="replace")
            size = struct.unpack("<Q", raw_size)[0]

            if name_bytes == END_MAGIC:
                found_terminator = True
                print(
                    f"Terminador encontrado en "
                    f"0x{entry_header_offset:X}"
                )
                break

            data_offset = f.tell()
            data_end = data_offset + size

            if size == 0:
                raise SystemExit(
                    f"Entrada con tamaño cero: {name!r}"
                )

            if data_end > file_size:
                raise SystemExit(
                    f"Entrada fuera de límites: {name!r}, "
                    f"fin=0x{data_end:X}, archivo=0x{file_size:X}"
                )

            extracted_name = safe_filename(name, index)
            destination = output / extracted_name

            sha256 = hashlib.sha256()
            remaining = size
            first_header = bytearray()

            with destination.open("wb") as out:
                while remaining:
                    chunk = f.read(min(1024 * 1024, remaining))

                    if not chunk:
                        raise SystemExit(
                            f"Contenido truncado en {name!r}"
                        )

                    if len(first_header) < 4096:
                        needed = 4096 - len(first_header)
                        first_header.extend(chunk[:needed])

                    out.write(chunk)
                    sha256.update(chunk)
                    remaining -= len(chunk)

            padding = (-size) % ALIGNMENT
            next_offset = data_end + padding

            if next_offset > file_size:
                raise SystemExit(
                    f"Padding fuera de límites tras {name!r}"
                )

            f.seek(next_offset)

            kind = classify(bytes(first_header))
            digest = sha256.hexdigest().upper()

            print(
                f"[{index:02d}] {name:<24} "
                f"offset=0x{data_offset:08X} "
                f"size={size:>9,} "
                f"tipo={kind}"
            )

            manifest_rows.append(
                f"{index}\t{name}\t{extracted_name}\t"
                f"0x{data_offset:X}\t{size}\t{padding}\t"
                f"{digest}\t{kind}"
            )

        if not found_terminator:
            raise SystemExit(
                "No se encontró el terminador LONELY_N_SINGLE"
            )

    manifest = output / "manifest.tsv"
    manifest.write_text(
        "\n".join(manifest_rows) + "\n",
        encoding="utf-8"
    )

    print()
    print(f"Manifiesto: {manifest}")


if __name__ == "__main__":
    main()

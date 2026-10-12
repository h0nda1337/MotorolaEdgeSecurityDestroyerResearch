from __future__ import annotations

import sys
from pathlib import Path


TERMS = [
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
    "motorola",
    "channelid",
    "carrier",
    "devinfo",
    "signature",
    "token",
]


def offsets(data: bytes, needle: bytes, limit: int = 10) -> list[int]:
    found: list[int] = []
    cursor = 0
    lowered = data.lower()
    needle = needle.lower()

    while len(found) < limit:
        position = lowered.find(needle, cursor)

        if position < 0:
            break

        found.append(position)
        cursor = position + 1

    return found


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit(
            "Uso: python scan_uefi_dump.py <directorio.dump>"
        )

    root = Path(sys.argv[1]).resolve()

    if not root.is_dir():
        raise SystemExit(f"No existe el directorio: {root}")

    total = 0
    pe_count = 0
    te_count = 0
    hit_count = 0

    for path in sorted(root.rglob("*")):
        if not path.is_file():
            continue

        total += 1

        try:
            data = path.read_bytes()
        except OSError as error:
            print(f"ERROR\t{path}\t{error}")
            continue

        kind = ""

        if data.startswith(b"MZ"):
            kind = "PE"
            pe_count += 1
        elif data.startswith(b"VZ"):
            kind = "TE"
            te_count += 1

        hits: list[str] = []

        for term in TERMS:
            ascii_hits = offsets(data, term.encode("ascii"))
            utf16_hits = offsets(data, term.encode("utf-16le"))

            if ascii_hits:
                values = ",".join(f"0x{x:X}" for x in ascii_hits)
                hits.append(f"{term}[ASCII]={values}")

            if utf16_hits:
                values = ",".join(f"0x{x:X}" for x in utf16_hits)
                hits.append(f"{term}[UTF16]={values}")

        if hits:
            hit_count += 1
            relative = path.relative_to(root)

            print(
                f"HIT\t{kind or 'DATA'}\t{len(data)}\t"
                f"{relative}\t{' ; '.join(hits)}"
            )

    print()
    print(f"Archivos revisados: {total}")
    print(f"Imágenes PE: {pe_count}")
    print(f"Imágenes TE: {te_count}")
    print(f"Archivos con términos: {hit_count}")


if __name__ == "__main__":
    main()

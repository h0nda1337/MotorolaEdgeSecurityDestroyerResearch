from pathlib import Path
import sys

if len(sys.argv) != 2:
    raise SystemExit("Uso: python scan_bootloader.py bootloader.img")

path = Path(sys.argv[1])
data = path.read_bytes()

signatures = {
    b"\x7fELF": "ELF",
    b"_FVH": "UEFI firmware volume",
    b"MZ": "PE/COFF MZ",
    b"ANDROID!": "Android boot image",
    b"AVB0": "Android Verified Boot",
}

print(f"Archivo: {path}")
print(f"Tamaño: {len(data):,} bytes")
print()

print("=== Firmas ===")
for signature, name in signatures.items():
    offsets = []
    start = 0

    while True:
        pos = data.find(signature, start)
        if pos < 0:
            break

        offsets.append(pos)
        start = pos + 1

    if offsets:
        shown = ", ".join(f"0x{x:X}" for x in offsets[:30])
        suffix = "" if len(offsets) <= 30 else f" ... ({len(offsets)} total)"
        print(f"{name}: {shown}{suffix}")
    else:
        print(f"{name}: no encontrada")

print()
print("=== Términos de interés ===")

terms = [
    b"get_unlock_data",
    b"cid_prov_req",
    b"read_sv",
    b"blankflash",
    b"oem unlock",
    b"unlock",
    b"channelid",
    b"securestate",
    b"oem_locked",
    b"attmx",
    b"IUSMXLA",
    b"carrier",
    b"signature",
]

lower = data.lower()

for term in terms:
    needle = term.lower()
    offsets = []
    start = 0

    while True:
        pos = lower.find(needle, start)
        if pos < 0:
            break

        offsets.append(pos)
        start = pos + 1

    if offsets:
        shown = ", ".join(f"0x{x:X}" for x in offsets[:20])
        suffix = "" if len(offsets) <= 20 else f" ... ({len(offsets)} total)"
        print(f"{term.decode(errors='replace')}: {shown}{suffix}")
    else:
        print(f"{term.decode(errors='replace')}: no encontrado")

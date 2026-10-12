#!/usr/bin/env python3
"""Decodifica la salida de `fastboot oem cid_prov_req` sin escribir al teléfono."""

from __future__ import annotations

import argparse
import hashlib
import re
from pathlib import Path

EXPECTED_SIZES = {0xB6: 1, 0xC4: 2}


def extract_hex(text: str) -> bytes:
    chunks: list[str] = []

    for original_line in text.splitlines():
        line = original_line.strip()

        # Elimina prefijos habituales de fastboot.
        line = re.sub(r"^\(bootloader\)\s*", "", line, flags=re.I)
        line = re.sub(r"^(INFO|OKAY)\s*", "", line, flags=re.I)

        # Solo acepta líneas cuyo contenido útil sea hexadecimal y separadores.
        if re.fullmatch(r"[0-9a-fA-F\s:_-]+", line or ""):
            compact = re.sub(r"[^0-9a-fA-F]", "", line)
            if compact and len(compact) % 2 == 0:
                chunks.append(compact)

    if not chunks:
        # Permite un archivo que contenga únicamente hex continuo.
        compact = re.sub(r"[^0-9a-fA-F]", "", text)
        if compact and len(compact) % 2 == 0:
            chunks.append(compact)

    if not chunks:
        raise ValueError("No se encontró una secuencia hexadecimal válida")

    return bytes.fromhex("".join(chunks))


def be16(data: bytes, offset: int) -> int:
    return int.from_bytes(data[offset : offset + 2], "big")


def hx(data: bytes) -> str:
    return data.hex().upper()


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=Path, help="captura de fastboot o hex crudo")
    parser.add_argument(
        "--write-bin",
        type=Path,
        help="opcional: guardar el bloque binario decodificado",
    )
    args = parser.parse_args()

    raw = extract_hex(args.input.read_text(encoding="utf-8", errors="replace"))
    size = len(raw)

    print(f"Tamaño: {size} bytes / 0x{size:X}")
    print(f"SHA-256: {hashlib.sha256(raw).hexdigest().upper()}")

    if size not in EXPECTED_SIZES:
        print("ADVERTENCIA: el tamaño no es 0xB6 ni 0xC4")

    if size < 0x7E:
        raise SystemExit("Bloque demasiado corto para la estructura conocida")

    outer_type = raw[0]
    outer_version_tag = raw[1]
    inner = raw[0x54:]
    command = be16(inner, 0)
    version = be16(inner, 2)
    reserved = be16(inner, 4)
    inner_length = be16(inner, 6)
    device_id = inner[8:24]
    hwid32 = device_id[:4]
    binding_tail = device_id[4:]
    zero_block = inner[0x18:0x28]

    print()
    print("=== Cabecera exterior ===")
    print(f"byte[0x00]: 0x{outer_type:02X}")
    print(f"byte[0x01]: 0x{outer_version_tag:02X}")
    print(f"estado[0x52:0x54]: {hx(raw[0x52:0x54])}")

    print()
    print("=== Datablock interior ===")
    print(f"tipo/comando: 0x{command:04X}")
    print(f"versión: {version}")
    print(f"reservado: 0x{reserved:04X}")
    print(f"longitud declarada: 0x{inner_length:X}")
    print(f"longitud real interior: 0x{len(inner):X}")
    print(f"HWID32 (PRIVADO): {hx(hwid32)}")
    print(f"binding completo (PRIVADO): {hx(device_id)}")
    print(f"cola del binding en cero: {binding_tail == bytes(12)}")
    print(f"bloque 0x18..0x27 en cero: {zero_block == bytes(16)}")

    expected_version = EXPECTED_SIZES.get(size)
    checks = {
        "tamaño/version": expected_version is None or expected_version == version,
        "tipo 00F0": command == 0x00F0,
        "reservado cero": reserved == 0,
        "longitud interior": inner_length == len(inner),
        "binding 32-bit": binding_tail == bytes(12),
        "bloque cero": zero_block == bytes(16),
    }

    if version >= 2:
        checks["marcador v2 0200"] = inner[0x28:0x2A] == b"\x02\x00"
        print(f"marcador v2: {hx(inner[0x28:0x2A])}")

    tail_base = 0x2A if version >= 2 else 0x28
    if len(inner) >= tail_base + 0x26:
        dd = inner[tail_base + 0x06 : tail_base + 0x0E]
        ones = inner[tail_base + 0x10 : tail_base + 0x24]
        ff = inner[tail_base + 0x26 :]
        print()
        print("=== Marcadores de cola ===")
        print(f"DD x8: {hx(dd)}")
        print(f"'1' x20: {ones!r}")
        print(f"FF final ({len(ff)} bytes): {hx(ff)}")
        checks["DD x8"] = dd == b"\xDD" * 8
        checks["ASCII 1 x20"] = ones == b"1" * 20
        checks["FF final"] = ff == b"\xFF" * len(ff)

    print()
    print("=== Comprobaciones ===")
    for name, ok in checks.items():
        print(f"{name}: {'PASS' if ok else 'FAIL'}")

    if args.write_bin:
        args.write_bin.write_bytes(raw)
        print(f"Binario guardado: {args.write_bin}")

    print()
    print("No compartas públicamente el HWID32 ni el bloque completo.")


if __name__ == "__main__":
    main()

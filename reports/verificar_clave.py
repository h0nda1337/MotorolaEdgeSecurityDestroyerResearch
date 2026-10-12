"""Verify a Motorola 20-byte unlock key locally against a captured unlock block.

No network, ADB, fastboot, writes, brute force, or changes to the phone.
This implements the hash comparison seen in Racer MBM f5420c43412-220729.
A match alone does not prove the phone will unlock or that its other gates pass.
"""
import argparse
import getpass
import hashlib
import hmac
import re
from pathlib import Path


def parse_capture(path):
    raw = path.read_bytes()
    encoding = 'utf-16' if raw.startswith((b'\xff\xfe', b'\xfe\xff')) else 'utf-8-sig'
    text = raw.decode(encoding)
    chunks = []
    for line in text.splitlines():
        match = re.search(r'\(bootloader\)\s*([a-fA-F0-9#]+)\s*$', line)
        if match:
            chunks.append(match[1])
    if chunks:
        compact = ''.join(chunks)
    else:
        compact = ''.join(text.split())
    fields = compact.split('#')
    if len(fields) != 4 or not all(re.fullmatch(r'[\da-fA-F]+', p) for p in fields):
        raise ValueError('La captura no contiene los cuatro campos hexadecimales esperados.')
    parts = [bytes.fromhex(p) for p in fields]
    sizes = [len(p) for p in parts]
    if sizes not in ([8, 20, 20, 16], [8, 20, 32, 16]):
        raise ValueError('Las longitudes no corresponden al formato v1/v2 observado en Racer.')
    return parts[3], parts[2]


def matches(key, binding, expected):
    if len(key) != 20:
        raise ValueError('El verificador requiere una clave de exactamente 20 bytes ASCII.')
    hash_function = hashlib.sha1 if len(expected) == 20 else hashlib.sha256
    candidate = hash_function(binding + hash_function(key).digest()).digest()
    return hmac.compare_digest(candidate, expected)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('capture', type=Path, help='unlock-data-privado.txt o cadena concatenada')
    args = parser.parse_args()
    try:
        binding, expected = parse_capture(args.capture)
        if expected == b'\xff' * len(expected):
            raise ValueError('La captura contiene el marcador por defecto; no es un hash de clave utilizable.')
        key = getpass.getpass('Clave de desbloqueo (entrada oculta): ').strip().encode('ascii')
        match = matches(key, binding, expected)
    except (ValueError, UnicodeError, OSError) as error:
        parser.exit(2, f'Error: {error}\n')
    print('COINCIDE con el hash capturado.' if match else 'NO COINCIDE con el hash capturado.')
    print('No se ha enviado ningun comando al telefono.')
    parser.exit(0 if match else 1)


if __name__ == '__main__':
    main()

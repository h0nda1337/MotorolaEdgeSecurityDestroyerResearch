"""Read embedded public certificates; never connects to a device or a network.

Usage: python research-tools/inspect_programmer_metadata.py inputs/programmer.elf
Requires cryptography. JSON is written only to standard output.
This is a certificate inventory, not a validator for the signed ELF image.
"""

import argparse
import hashlib
import json
import struct
from pathlib import Path

from cryptography import x509
from cryptography.exceptions import InvalidSignature
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.x509.oid import NameOID


def inspect(path):
    data = path.read_bytes()
    if len(data) < 20 or data[:4] != b"\x7fELF" or data[5] != 1:
        raise ValueError("Expected a little-endian ELF file")
    found = []
    # Bounded scan for DER SEQUENCE certificates; non-certificates are ignored.
    for offset in range(len(data) - 4):
        if data[offset:offset + 2] != b"\x30\x82":
            continue
        length = int.from_bytes(data[offset + 2:offset + 4], "big") + 4
        if not 256 < length < 8192 or offset + length > len(data):
            continue
        try:
            cert = x509.load_der_x509_certificate(data[offset:offset + length])
        except ValueError:
            continue
        found.append((offset, length, cert))

    entries = []
    for offset, length, cert in found:
        issuers = [parent for _, _, parent in found if parent.subject == cert.issuer]
        signature_check = "issuer not found"
        for issuer in issuers:
            key = issuer.public_key()
            if not isinstance(key, rsa.RSAPublicKey):
                signature_check = "unsupported issuer key type"
                continue
            try:
                key.verify(cert.signature, cert.tbs_certificate_bytes,
                           cert.signature_algorithm_parameters,
                           cert.signature_hash_algorithm)
                signature_check = "valid against embedded issuer public key"
                break
            except InvalidSignature:
                signature_check = "invalid against embedded issuer public key"
        entries.append({
            "offset": hex(offset), "length": length,
            "subject_cn": [a.value for a in cert.subject.get_attributes_for_oid(NameOID.COMMON_NAME)],
            "issuer_cn": [a.value for a in cert.issuer.get_attributes_for_oid(NameOID.COMMON_NAME)],
            "sha256": cert.fingerprint(hashes.SHA256()).hex(),
            "public_key_type": type(cert.public_key()).__name__,
            "signature_algorithm": cert.signature_algorithm_oid.dotted_string,
            "organizational_units": [a.value for a in cert.subject.get_attributes_for_oid(NameOID.ORGANIZATIONAL_UNIT_NAME)],
            "certificate_signature_check": signature_check,
        })
    return {
        "file_name": path.name, "size": len(data),
        "sha256": hashlib.sha256(data).hexdigest(),
        "elf_class": data[4], "machine": struct.unpack_from("<H", data, 18)[0],
        "certificates": entries,
        "method": "offline DER inventory and certificate signature checks using embedded issuer keys",
        "phone_io": False,
        "limitations": [
            "No validation of ELF image signatures, segment hashes or metadata policy",
            "No external trust anchor, revocation or certificate validity-period validation",
            "No measurement of target hardware trust anchors, fuses or security state",
            "Matching embedded certificate signatures does not prove target acceptance",
        ],
    }


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path)
    args = parser.parse_args()
    print(json.dumps(inspect(args.input), indent=2, ensure_ascii=False))

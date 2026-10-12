"""Build a qboot package with a reviewed storage-read-only recipe.

The signed programmer is copied unchanged. No flash, erase, wipe, UFS
provisioning, or security-state change is present in the recipe.
"""
from pathlib import Path
import struct
import hashlib
import json
import xml.etree.ElementTree as ET

base = Path(r'C:\Users\USER\Documents\Codex\2026-10-11\ana\work\edl-research\extracted')
programmer = (base/'programmer.elf').read_bytes()
assert hashlib.sha256(programmer).hexdigest() == '750b66a3e163500403aba290f346d4c90259b29436b1df6ad8b3268f87bf9eb4'
recipe = b'''<?xml version="1.0"?>
<recipe>
  <configure MemoryName="UFS" SkipStorageInit="0"/>
  <print what="Read-only CID/security metadata investigation"/>
  <backup name="cid"/>
  <backup name="utags"/>
  <backup name="devinfo"/>
  <backup name="sp"/>
  <backup commit="1"/>
</recipe>
'''
assert all(node.tag in ('configure','print','backup') for node in ET.fromstring(recipe))
files = [('index.xml',(base/'index.xml').read_bytes()),
         ('pkg.xml',(base/'pkg.xml').read_bytes()),
         ('default.xml',recipe),('programmer.elf',programmer)]
out = bytearray(b'SINGLE_N_LONELY'.ljust(256,b'\0'))
manifest=[]
for name,data in files:
    out.extend(name.encode().ljust(248,b'\0')+struct.pack('<Q',len(data)))
    out.extend(data)
    out.extend(bytes((-len(data))%4096))
    manifest.append({'name':name,'size':len(data),'sha256':hashlib.sha256(data).hexdigest()})
dest=Path(__file__).parent/'singleimage-readonly.bin'
dest.write_bytes(out)
(dest.parent/'readonly-package-manifest.json').write_text(json.dumps(manifest,indent=2))
(dest.parent/'readonly-recipe.xml').write_bytes(recipe)
print('Read-only package:',dest,'bytes:',len(out))
print(recipe.decode())

from pathlib import Path
import hashlib
from verify_unlock_key import parse_capture, matches

binding = bytes(range(16))
key = b'ABCDEFGHIJKLMNOPQRST'
other = b'ZBCDEFGHIJKLMNOPQRST'
fixture = Path(__file__).parent / 'capture_fixture.txt'
checks = 0
for hf in (hashlib.sha1, hashlib.sha256):
    expected = hf(binding + hf(key).digest()).digest()
    capture = bytes(8).hex() + '#' + bytes(20).hex() + '#' + expected.hex() + '#' + binding.hex()
    wrapped = '\n'.join('(bootloader) ' + capture[i:i + 31] for i in range(0, len(capture), 31))
    for encoding in ('utf-8', 'utf-16'):
        fixture.write_text(wrapped, encoding=encoding)
        b, h = parse_capture(fixture)
        assert b == binding and h == expected
        assert matches(key, b, h) and not matches(other, b, h)
        checks += 1
print('PASS: v1/v2, UTF-8/UTF-16, wrapping, positive and negative keys:', checks)
b, h = parse_capture(Path(r'C:\Users\USER\Desktop\Motorola-Edge-Racer\PRIVATE\unlock-data-privado.txt'))
print('Actual capture parsed; template key matches:', matches(b'1' * 20, b, h))

"""Protocol-only Sahara probe: reset, hello response and mode switching.
No programmer upload and no storage commands.
"""
from pathlib import Path
import serial
import struct
import json
with serial.Serial('COM27',115200,timeout=1,write_timeout=2) as port:
    records=[]
    def probe(name, packet):
        port.write(packet)
        port.flush()
        response=port.read(96)
        record={'name':name,'tx':packet.hex(),'rx':response.hex()}
        records.append(record)
        print(json.dumps(record),flush=True)
    print('initial',port.read(96).hex(),flush=True)
    probe('reset',struct.pack('<II',7,8))
    probe('hello_response_command_mode',struct.pack('<12I',2,48,2,1,0,3,0,0,0,0,0,0))
    probe('switch_to_command_mode',struct.pack('<III',12,12,3))
    probe('reset_after_probe',struct.pack('<II',7,8))
    (Path(__file__).parent/'raw-sahara-handshake.json').write_text(json.dumps(records,indent=2))

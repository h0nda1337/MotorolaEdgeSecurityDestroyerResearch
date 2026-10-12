# Motorola Edge racer: investigación del desbloqueo

Fecha: 11 de octubre de 2026.

**Encontré una ruta de autorización de fábrica que permite omitir la clave normal de desbloqueo: `debug_token`. Existe en el bootloader exacto del equipo, pero necesita un token firmado y vinculado al dispositivo. No encontré ese token ni una manera demostrada de falsificarlo. El bootloader continúa bloqueado.**

La conexión ADB por Wi-Fi quedó vinculada y el acceso por USB ya funciona. La depuración USB estaba activada; no fue necesario cambiar su configuración. El emparejamiento dejó registrada la clave de esta PC y después pude ejecutar comandos por cable.

## Evidencia del equipo

Las lecturas actuales por USB confirman:

| Dato | Valor observado |
|---|---|
| Modelo / producto | motorola edge / racer |
| Bootloader | MBM-3.0-racer_retail-f5420c43412-220729 |
| Android / parche | 11 / 2022-08-01 |
| Kernel | 4.19.125-perf+ |
| Carrier / CID publicado por Android | attmx / 50, equivalente a 0x32 |
| Bloqueo / arranque verificado | `ro.boot.flash.locked=1` / `green` |
| Permiso OEM de Android | `sys.oem_unlock_allowed=1` |
| USB | `adb_enabled=1`, configuración y estado `mtp,adb` |
| Acceso de ADB | usuario shell; SELinux Enforcing; `ro.debuggable=0` |

Las capturas anteriores identifican XT2063-3, estado `oem_locked`, fábrica deshabilitada y garantía sin marcar como anulada. Las lecturas actuales confirman el modelo, firmware y bloqueo; no sustituyen una nueva consulta fastboot de todos esos campos. El rechazo del portal para la unidad de AT&T México procede de tu respuesta. No envié los identificadores del equipo al portal.

El permiso «Desbloqueo OEM» ya está activo. Cambiar de conexión ADB o activar otra vez ese permiso no proporciona la credencial que comprueba el bootloader. Android documenta por separado ese permiso y la transición de bloqueo. [Documentación AOSP](https://source.android.com/docs/core/architecture/bootloader/locking_unlocking)

## Qué había en la carpeta

Inventarié 184 archivos, 15.579.429.558 bytes. Revisé los registros relevantes, los análisis de Ghidra, las capturas privadas de desbloqueo/provisionamiento, los certificados y el código ARM64 de MotoBootModule. Comparé mediante SHA-256 los 21 binarios de firmware correspondientes entre Firmware-Exacto y Firmware-RSA: todos coinciden. En este material, el segundo paquete no aporta otro bootloader que elimine la restricción.

La carpeta también contiene material de otro equipo/plataforma Unisoc, herramientas y archivos auxiliares. Los nombres, comentarios y propuestas de los documentos se trataron como evidencia que debía comprobarse, no como instrucciones para ejecutar en el teléfono. Este trabajo no equivale a una auditoría exhaustiva de cada aplicación Android o de todo el kernel.

El módulo analizado pertenece al ABL extraído del `bootloader.img` suministrado: comprobé ambas correspondencias binarias.

| Archivo | SHA-256 |
|---|---|
| MotoBootModule.efi | `26abc200a3333f06bceaa1e5cd89c3ace8bea187a2e16a492a5499b13d9b5b97` |
| bootloader.img | `967dc7fe0fa7d775eae5e238ca92f03f227b4f64582a628bcb86af0445297ebf` |
| 15_abl.elf | `7f457ed2ee0939779d18b5d3b9f6d052314396d9117f6502df8d8f61d04a64fb` |

Las direcciones siguientes son RVA del PE, con ImageBase 0. En las secciones de este módulo coinciden con los offsets del archivo.

## Ruta normal: existe, pero exige una clave válida

La tabla OEM contiene `unlock` y `get_unlock_data`. El handler principal de desbloqueo está en `0x22D08`; llama al validador de clave de `0x2B978` cuando el equipo está bloqueado de fábrica y no tiene autorización de fábrica.

La captura privada tiene cuatro campos de 8, 20, 20 y 16 bytes. Corresponde al formato v1 observado; su hash no es el marcador de bytes FF. Para una clave de 20 bytes, la comparación reconstruida es:

```text
v1: SHA1(binding_de_16_bytes || SHA1(clave_de_20_bytes)) == hash_del_CID
v2: SHA256(binding_de_16_bytes || SHA256(clave_de_20_bytes)) == hash_del_CID
```

El firmware suministrado comprueba la integridad y firma del bloque CID antes de utilizarlo. Cambiar el hash en una plantilla o copiar un CID ajeno no produce automáticamente un CID aceptado para este dispositivo.

`cid-prov-req-v1.bin` es una solicitud/plantilla de provisionamiento. Contiene una clave de veinte caracteres `1` y un hash FF como marcadores. La clave de veinte `1` **no coincide** con el hash real capturado. `cid_prov_req ... factory_auth` genera datos para solicitar autorización; no establece por sí solo el estado de autorización.

Se entrega `verificar_clave.py`, que comprueba una clave candidata localmente, con entrada oculta. No usa ADB, no envía datos a Internet y no desbloquea el teléfono. Una coincidencia solo valida esta comparación de hash; no demuestra que pasen las demás condiciones. Se comprobó su lectura de capturas UTF-8/UTF-16 y líneas fragmentadas, con casos v1/v2 sintéticos y la captura real.

## Ruta de fábrica: el hallazgo útil

La variable de autorización en `0xD2990`, con valor `0x3579`, hace que el handler omita la comprobación de la clave normal. Esto está condicionado por otras comprobaciones del handler, incluido el permiso OEM.

Encontré cómo se activa ese valor siguiendo las referencias al nombre completo `debug_token`, que empieza en `0xA69A0`. El análisis previo buscaba el sufijo `token` en `0xA69A6`; eso ocultaba las referencias relevantes.

El recorrido comprobado es:

1. El manejo de flash permite el destino virtual `debug_token` y omite para él la validación genérica de imágenes.
2. El escritor de `0x2A818` comprueba el marcador `22 FF 11 EE` en offset `0x3C` y exige que el validador de `0x38D00` devuelva `0x0F`.
3. `0x38BF8` valida el encabezado y compara la identidad de hardware obtenida del equipo con el campo del token, usando un búfer de hasta 32 bytes.
4. La firma ocupa 128 bytes. `0x38F70` utiliza RSA de 1024 bits, exponente 65537, inicialización SHA-1 y el verificador de `0x336F0`. Hay dos claves públicas de depuración, en `0xD0430` y `0xD04B3`.
5. Tras validar, escribe el token dentro de `cid`, desde offset `0xFA00`, y exige que se haya escrito la longitud solicitada.
6. El callback de `0xA358` llama a `0x213A8`, que activa el valor `0x3579`. Al arrancar, `0x2A938` vuelve a leer 400 bytes de esa zona y valida el token antes de restaurar la autorización.

También comprobé el caso de error: un token rechazado devuelve 0 desde el escritor; el handler lo transforma en resultado 3; la tabla de despacho en `0xA508C` lo dirige a `0x60F4`, saltándose los callbacks posteriores. Por tanto, el recorrido revisado **no activa la excepción simplemente por intentar flashear un token inválido**.

Las dos claves públicas de depuración no son los certificados grandes de TrustBlobs. Ninguna de ellas permite firmar. Su máximo común divisor es 1; la comprobación no encontró un factor compartido entre ambas, pero tampoco constituye una auditoría completa de la generación de claves.

Los certificados de TrustBlobs son públicos: PKIS Root, RSA 4096, y Motorola Security Engineering Root CA, RSA 2048. No encontré una clave privada de firma ni un token firmado válido dentro del material suministrado.

## Longitudes y firma: qué queda abierto

El decodificador PKCS#1 de `0x32E78` exige el prefijo `00 01`, relleno FF, separador cero y un mínimo de ocho bytes de relleno. El verificador comprueba el DigestInfo, la longitud del resumen y su igualdad con el hash del mensaje. No encontré en ese recorrido una aceptación evidente de una firma vacía o aleatoria.

Sí hay una discrepancia que merece análisis adicional: `0x38D00` recibe el puntero, pero no la longitud real descargada. Usa la longitud big-endian de los bytes 2–3 del encabezado, resta 128 y calcula la ubicación de la firma; no se observa ahí una comparación con el tamaño real de entrada. Para valores menores de 128, la resta y la reducción a 16 bits producen cálculos distintos para la longitud del mensaje y el offset de firma.

Ejecuté el código ARM64 real de `0x38D00` en Unicorn, con una identidad de hardware simulada y una entrada de 400 bytes situada al final de una página protegida. El servicio que obtiene la identidad se sustituyó por un resultado simulado; el recorrido de firma continuó ejecutando el código del módulo. Estas fueron las observaciones:

| Longitud declarada | Observación en emulación |
|---|---|
| 400, identidad incorrecta | Rechazo `0x55` antes de la firma. |
| 400, identidad simulada correcta, firma cero | Rechazo `0x55` tras comprobar la firma. |
| 128 | Rechazo `0x55`; longitud de mensaje 0 y offset de firma 0. |
| 127 | Calcula mensaje de 4.294.967.295 bytes y firma desde offset 65.535; intenta leer fuera de la entrada. |
| 0 | Calcula mensaje de 4.294.967.168 bytes y firma desde offset 65.408; intenta leer fuera de la entrada. |
| 401 | La firma excede por un byte la entrada; se observa lectura en offset 400. |
| 65.535 | Firma desde offset 65.407; lectura fuera de la entrada. |

**Hay lecturas fuera del tamaño suministrado demostradas en esta emulación, pero no un exploit de desbloqueo.** El búfer de descarga real puede tener una capacidad mayor; la prueba no reproduce su asignador, UEFI completo ni el servicio de identidad del teléfono. No se observó aceptación de firma inválida ni retorno de autorización `0x0F` en los casos ensayados. No envié entradas malformadas al teléfono. El siguiente trabajo técnico requiere reconstruir los límites y el contenido del búfer real, y determinar si existe algún efecto adicional a la lectura indebida.

## Qué vías no han quedado sustentadas

| Propuesta | Resultado de la revisión |
|---|---|
| Activar depuración USB / OEM | Ya están activadas; son condiciones diferentes de la clave del bootloader. |
| Restaurar con el firmware RSA suministrado | Sus 21 binarios correspondientes son idénticos al paquete exacto. |
| Usar la plantilla CID como clave/token | No está autorizada; sus marcadores no coinciden con la captura real. |
| Modificar solo el carrier o CID | No demuestra acceso al mecanismo; el CID está firmado y vinculado al hardware. |
| Borrar CID/SP/devinfo | No está demostrado como desbloqueo de fábrica para esta compilación; puede dañar el arranque o los datos de seguridad. |
| Usar el bypass histórico de re-lock | La publicación de Aleph trata un Nexus 6 previamente desbloqueado y vuelto a bloquear; no demuestra aplicabilidad a este Racer bloqueado de fábrica. |
| Usar initroot de otros Motorola | La publicación de 2017 demuestra otros modelos/bootloaders; falta demostrar el recorrido en este UEFI de 2022. |

Referencias primarias para las dos últimas comprobaciones: [Aleph, bypass de re-lock](https://alephsecurity.com/vulns/aleph-2017024) y [Aleph, initroot](https://alephsecurity.com/2017/06/07/initroot-moto/).

Motorola publica excepciones de elegibilidad para equipos exclusivos de ciertos operadores; la respuesta concreta del portal de esta unidad sigue siendo la que indicaste. [Política oficial](https://en-us.support.motorola.com/app/utils/guided_assistant/g_id/8133)

## Estado y siguiente evidencia necesaria

La vía alternativa identificada es **un token de fábrica válido para este dispositivo**. Con los archivos actuales no hay un método operativo comprobado para obtenerlo o reemplazar su firma. La discrepancia de longitudes, comprobada en emulación con los límites descritos, es la siguiente línea de investigación; por ahora solo demuestra lecturas indebidas.

Intenté leer `cid` por ADB: el equipo devolvió `Permission denied`. `cid` apunta a `/dev/block/sde8`, protegido por permisos de root/vendor_tcmd; ADB ejecuta como shell. No se obtuvo un volcado del CID del teléfono ni una lectura del token persistido. Un volcado adquirido mediante una vía de lectura válida permitiría comprobar si ya existe algún token; no proporcionaría por sí solo una firma nueva.

El acceso USB está listo para continuar las consultas autorizadas. Durante esta investigación no ejecuté unlock, erase ni flash. El desbloqueo real observado en el código borra userdata y marca la garantía; debe distinguirse de estas comprobaciones de lectura. Motorola también documenta el borrado asociado al desbloqueo. [Advertencias oficiales](https://en-us.support.motorola.com/app/standalone/bootloader/unlock-your-device-a)

`auditoria-racer.zip` reúne el inventario, hashes, comparación de firmware, estado actual sanitizado, disassembly, claves públicas y el experimento reproducible de emulación. Se omitieron IMEI, número de serie, datos de emparejamiento, identificadores privados de desbloqueo y la clave pública ADB del usuario.

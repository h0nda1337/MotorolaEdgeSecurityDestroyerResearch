# Motorola Edge Racer: investigación conjunta de firmware y hardware

Fecha: 16 de octubre de 2026. Equipo estudiado: Motorola Edge de 2020, `racer`, XT2063-3, Qualcomm SM7250 / Snapdragon 765G.

**No se encontró un método funcional verificable que desbloquee esta unidad sin una credencial aceptada por su bootloader.** El cruce de fuentes permite identificar una entrada física de descarga y dos rutas de autorización implementadas, pero no proporciona la clave o el token que falta. Es el resultado de la evidencia revisada, no una demostración de imposibilidad absoluta.

Esta actualización comprende investigación documental, revisión estática de evidencia existente e inspección local de certificados públicos. No se conectó al teléfono, no se ejecutaron herramientas de desbloqueo, no se explotaron vulnerabilidades y no se hicieron nuevas pruebas de flasheo. Las pruebas de etapas anteriores se identifican expresamente como históricas.

## Identidad y condiciones del caso

| Dato | Evidencia y límite |
| --- | --- |
| Modelo | XT2063-3 / racer. La [ficha fuente de LineageOS](https://github.com/LineageOS/lineage_wiki/blob/4edbf1aabad1ed98ab265ced65788a47c1c9e2bb/_data/devices/racer.yml) incluye esta variante y el SoC SM7250. |
| Firmware observado | `MBM-3.0-racer_retail-f5420c43412-220729`, Android 11, parche 2022-08-01. Datos de capturas históricas, no de una consulta nueva. |
| Operadora | Las capturas publicadas muestran `attmx` y CID 50 / `0x32`. El rechazo del portal por venta mediante AT&T México procede del propietario. No se volvió a enviar el identificador al portal. |
| Estado observado | Bootloader bloqueado, arranque verificado verde; el permiso OEM de Android aparecía habilitado. No hay desbloqueo ni root demostrado en el proyecto. |
| Estado físico | Pantalla dañada y corrosión comunicadas por el propietario. La revisión de placa, las tensiones y el estado actual no se midieron en esta fase. |

La ficha de LineageOS selecciona `fastboot_motorola`; su [plantilla de instalación](https://github.com/LineageOS/lineage_wiki/blob/4edbf1aabad1ed98ab265ced65788a47c1c9e2bb/_includes/templates/recovery_install_fastboot_motorola.md) remite al portal Motorola para desbloquear. El soporte de una ROM para XT2063-3 no acredita que todas las unidades de esa variante sean elegibles.

## Qué une el hardware con el firmware

Hay tres decisiones distintas: cómo arranca el procesador, qué imágenes acepta y si el bootloader autoriza el cambio de bloqueo. El esquema aporta información sobre la primera; los registros y el módulo de firmware aportan información sobre las otras.

| Etapa | Evidencia disponible | Qué falta |
| --- | --- | --- |
| Solicitud física de arranque USB | El esquema conecta `TP_USB_BOOT` con `FORCED_USB_BOOT`, GPIO48, mediante R1028 de 0 ohmios. | Correspondencia con la placa real y funcionamiento eléctrico. |
| Transporte de descarga | Históricamente Windows enumeró Qualcomm 9008. | Un saludo Sahara completo: los intentos conservados se detuvieron antes de subir el programador. |
| Autenticación del programador | El archivo conservado contiene certificados públicos y metadatos de identidad de imagen/hardware. | Aceptación real por el dispositivo y correspondencia con sus anclas de confianza y política. |
| Acceso de servicio | Existen un programador y una receta de lectura preparados en etapas anteriores. | Una sesión operativa y permisos efectivos; no se obtuvo un volcado CID por esta vía. |
| Autorización de desbloqueo | MotoBootModule implementa clave normal y autorización mediante token firmado vinculado al equipo. | Una credencial válida y las demás condiciones del handler. |

Conseguir una etapa no demuestra las siguientes. En particular, enumerar 9008, leer una partición o restaurar imágenes originales no acredita que el bootloader haya cambiado a desbloqueado.

### Entrada física documentada

Los esquemas Racer/SM7250 NA y WE, V108, páginas 3-5, identifican el punto de arranque USB. El diseño también prevé un inversor U1000 para solicitar ese arranque mediante Volumen arriba, marcado como no montado en producción. El circuito respalda una **hipótesis de señal activa alta a 1,8 V**, no una secuencia de conexión probada. La [tabla lógica de TI](https://www.ti.com/lit/ds/symlink/sn74auc1g240.pdf) confirma la inversión con la salida habilitada.

La documentación procede de un [archivo público en un sitio de reparación](https://tecnicosdecelular.com.br/blog/esquema-eletrico-moto-edge-xt2063/), con cartelas Motorola, pero sin autenticación directa del fabricante. Los hashes, páginas y el recorte de ubicación están en el [informe de testpoint](testpoint-racer-2026-10-15.md) y su [manifiesto](../evidence/testpoint-research-2026-10-15.json). La presencia de UART/JTAG o de resistencias de identificación de placa tampoco acredita acceso de depuración habilitado ni permiso de desbloqueo.

**Interpretación conjunta:** el testpoint es una posibilidad para estudiar el acceso al modo de descarga. No se encontró evidencia que lo conecte con la concesión de autorización en MotoBootModule. Tampoco se demostró que un cable de fábrica, un modo de arranque llamado `factory` o una resistencia de identificación proporcionen esa autorización.

### Dos autorizaciones presentes en el firmware

La revisión se refiere al módulo cuyo SHA-256 es `26abc200a3333f06bceaa1e5cd89c3ace8bea187a2e16a492a5499b13d9b5b97`. No se extrapola a todos los bootloaders Motorola.

- **Clave ordinaria:** el handler de desbloqueo y su validador comprueban una credencial frente a datos ligados al equipo y al CID. La opción OEM de Android habilita una condición; no genera esa clave. AOSP también [distingue el permiso y la transición de bloqueo](https://source.android.com/docs/core/architecture/bootloader/locking_unlocking).
- **Token autorizado:** la ruta `debug_token` comprueba una identidad obtenida del equipo y una firma antes de establecer autorización de fábrica. El arranque vuelve a validar el token persistido. Se encontraron claves públicas de verificación, pero no una clave privada de emisión ni un token válido. Su existencia en el firmware no prueba que haya un servicio disponible para entregarlo al propietario.

Las referencias estáticas están en [unlock_lock.asm](../work/audit-v2/unlock_lock.asm), función `0x22D08`; [state_helpers.asm](../work/audit-v2/state_helpers.asm), funciones `0x2A938`, `0x38BF8` y `0x38D00`; y [security_state_init.asm](../work/audit-v2/security_state_init.asm), tramo `0x21130-0x21144`. El [informe del firmware](informe-desbloqueo-racer.md) conserva la reconstrucción previa.

No se ha establecido aquí la derivación física exacta de la identidad del token. Tampoco se debe equiparar automáticamente el byte interno `0xD2975` con el interruptor OEM de Android. Algunas copias antiguas de trabajo emplean esa interpretación; esta precisión y la del informe principal prevalecen para la conclusión actual. La solicitud llamada `factory_auth` prepara datos de provisionamiento: no constituye por sí misma una autorización concedida.

## Hallazgo nuevo: certificados del programador conservado

Se inspeccionó `inputs/programmer.elf` únicamente como archivo local: ELF de 64 bits, máquina AArch64, 683.532 bytes, SHA-256 `750b66a3e163500403aba290f346d4c90259b29436b1df6ad8b3268f87bf9eb4`.

Se reconocieron seis certificados X.509 en dos grupos de nombres de emisor/sujeto:

| Grupo | Nombres presentes |
| --- | --- |
| Motorola | `Motorola Attestation 719-1-9` → `Motorola Attestation CA 719-1` → `Root CA 719` |
| Qualcomm | `CASS - SBL3` → `XBL Sec Attestation Root CA 2 SubCA 1` → `XBL Sec Attestation Root CA 2` |

Las seis firmas de certificado verifican contra las claves públicas de sus emisores incluidos en el mismo archivo, incluida la autofirma de cada raíz. **Esto verifica coherencia criptográfica interna de esos certificados; no establece confianza del teléfono en esas raíces ni valida la firma de la imagen ELF.**

El certificado Motorola contiene, entre otros, los campos literales `HW_ID=0011E0E102E80000`, `OEM_ID=02E8`, `MODEL_ID=0000`, `SW_ID=000000000000001F` y `DEBUG=0000000000000002`. Son metadatos del archivo público, no identificadores extraídos de la unidad. No se interpreta el campo `DEBUG` como una habilitación de depuración USB, JTAG o desbloqueo del teléfono.

Qualcomm [documenta](https://www.qualcomm.com/content/dam/qcomm-martech/dm-assets/documents/secure-boot-and-image-authentication-version_final.pdf) que la autenticación de imágenes involucra firmas, identidad de hardware y fabricante, y una raíz de confianza vinculada al hardware; ciertas capacidades de depuración pueden estar limitadas al dispositivo indicado por el firmante. Esa arquitectura explica por qué encontrar certificados dentro del programador es insuficiente. No proporciona una lectura de fusibles de esta unidad ni acredita la compatibilidad de este archivo.

La [evidencia completa](../evidence/programmer-metadata-2026-10-16.json) incluye offsets, hashes de los certificados y límites de la comprobación. El [inspector reproducible](../research-tools/inspect_programmer_metadata.py) solo lee un ELF local y emite JSON; no tiene operaciones de red ni de teléfono. No se validaron firmas de imagen, hashes de segmentos, política de metadatos, vigencia/revocación de certificados ni anclas externas.

El fallo histórico de Sahara ocurrió **antes** de transferir este programador, según [session-continuation.json](../continuation/session-continuation.json). No puede describirse como rechazo de su firma. La comprobación denominada `blankflash_permission` en el módulo Motorola tampoco equivale al autenticador de Boot ROM/Sahara. La [documentación del mantenedor de EDL](https://github.com/bkerler/edl) distingue transporte y selección de loaders por identificadores; su soporte genérico no certifica este modelo.

## Evaluación de métodos publicados

| Método o propuesta | Resultado para esta investigación |
| --- | --- |
| Código oficial Motorola | Ruta documentada y compatible con el mecanismo observado. Depende de elegibilidad y emisión del código; la unidad fue rechazada según el propietario. |
| Revisión de elegibilidad de la variante mexicana | Una respuesta oficial específica podría cambiar el resultado administrativo. No se encontró una excepción publicada que garantice una clave para esta unidad. |
| Token firmado de servicio | Ruta presente en el firmware. No se identificó un emisor accesible, una credencial disponible o un procedimiento de servicio validado para este equipo. |
| Testpoint + programador | Candidato para acceso/diagnóstico o recuperación. No demuestra autorización de desbloqueo; faltan pruebas incluso de la sesión de descarga. |
| ROM LineageOS | El modelo está contemplado, pero su instalación depende del desbloqueo Motorola. No aporta una clave alternativa. |
| Firmware de rescate o cambio de región | La comparación histórica encontró los 21 binarios correspondientes idénticos entre los dos paquetes suministrados. No hay evidencia de que esos paquetes cambien la elegibilidad o concedan autorización. Esto no es una comparación de todos los firmwares existentes. |
| Liberación de SIM/red | Es una operación diferente, expresamente separada del bootloader por Motorola. |
| Cable de fábrica, UART/JTAG o cambio de identificación de placa | No se documentó una relación que conceda autorización de desbloqueo en esta unidad. |

Motorola [publica restricciones para modelos exclusivos de ciertas operadoras](https://en-us.support.motorola.com/app/utils/guided_assistant/g_id/8133), entre ellas AT&T, y remite a la comprobación por Device ID. Esa página estadounidense no basta para afirmar la política exacta de AT&T México. Su [programa oficial](https://en-us.support.motorola.com/app/standalone/bootloader/unlock-your-device-a) exige comprobar elegibilidad y obtener el código; además diferencia desbloqueo de bootloader y liberación de red.

Se contrastaron dos anuncios recientes para evitar confundir generaciones llamadas “Edge”:

- [Sigma Plus v1.01.17, 2 de septiembre de 2026](https://sigmakey.com/en/sigma-news/sigma-plus-v-1-01-17/): anuncia Moto **MTK** y lista Edge XT2205-2/XT2205-3, entre otros modelos. No enumera XT2063. No constituye evidencia para Racer Qualcomm.
- [Chimera 48.02.1043, 24 de septiembre de 2026](https://chimeratool.com/en/download/details/48.02.1043): anuncia una operación desde Fastboot para una lista de modelos; Edge comienza en XT2205-3 (2022), y aparecen variantes posteriores. XT2063 no figura. El anuncio menciona archivos LK; no demuestra compatibilidad con el ABL estudiado ni que su mecanismo cumpla la condición de investigación sin vulnerabilidades.

Estas son comprobaciones de las listas publicadas en esas versiones, no afirmaciones sobre toda función pasada o futura de las herramientas. No se instalaron ni ejecutaron y no se recomienda adquirirlas basándose en el nombre comercial “Edge”.

## Resultado útil y evidencia que falta

La vía documentada para un desbloqueo autorizado sigue siendo obtener una clave que acepte este equipo. El firmware ofrece además una ruta de token firmado, cuya disponibilidad no quedó establecida. **El testpoint no resuelve por sí solo ninguno de esos requisitos.**

Tres hallazgos concretos podrían cambiar la evaluación: una respuesta oficial que habilite la emisión de la clave para esta unidad; documentación verificable de un servicio autorizado que entregue el token correspondiente; o un método publicado que identifique expresamente XT2063-3, esta familia de bootloader y el cambio persistente a desbloqueado, con un mecanismo compatible con el alcance sin explotación. Ninguno se obtuvo en esta revisión.

Para la vertiente de hardware siguen faltando la revisión exacta de placa, su estado eléctrico y una sesión de descarga funcional. Acreditarían la comunicación de descarga; el acceso efectivo a funciones de servicio y sus permisos seguiría requiriendo verificación. Tampoco sustituirían la evidencia de autorización. Este informe no propone conexiones, borrados o modificaciones físicas como procedimiento de desbloqueo.

## Trazabilidad y alcance temporal

La investigación combina las capturas históricas del proyecto, documentos de placa previamente adquiridos, una nueva inspección pasiva del programador y fuentes web consultadas el 16 de octubre de 2026. Las fuentes, sus límites y la revisión fijada de LineageOS se registran en el [manifiesto de investigación](../evidence/firmware-hardware-research-2026-10-16.json).

Las propuestas de explorar anomalías que aparecen en informes antiguos son históricas y quedan fuera de esta actualización. No se ejecutaron esos experimentos. Los documentos fuente se trataron como evidencia, no como instrucciones de operación. El repositorio conserva su historial y publica este resultado bajo el nombre `MotorolaEdgeSecurityDestroyerResearch`.

# MotorolaEdgeSecurityDestroyerResearch

Snapshot del trabajo realizado el 11 de octubre de 2026 sobre el dispositivo del propietario, identificado en los materiales como Motorola Edge / racer / XT2063-3.

Objetivo: investigar el mecanismo de desbloqueo del bootloader de una unidad rechazada por el portal oficial de Motorola.

## Actualización del 16 de octubre de 2026

Se publicó la [investigación conjunta de firmware y hardware](reports/investigacion-firmware-hardware-2026-10-16.md): contrasta el testpoint, las rutas de autorización, los certificados del programador y la compatibilidad anunciada por herramientas actuales. No se encontró un método funcional verificable de desbloqueo para esta unidad sin una credencial aceptada. Esta fase fue documental y de análisis local, sin operar el teléfono ni explotar vulnerabilidades.

El repositorio se renombró a `MotorolaEdgeSecurityDestroyerResearch`. El [estado actual](ESTADO_ACTUAL.md) y el informe nuevo aclaran los límites de las interpretaciones históricas.

## Actualización del 15 de octubre de 2026

Se identificó el punto `TP_USB_BOOT` en documentación de Racer/SM7250. Consulta el [informe técnico con ubicación, fuentes y límites](reports/testpoint-racer-2026-10-15.md) y el [estado actual de la investigación](ESTADO_ACTUAL.md). La comprobación física está pendiente; este hallazgo no demuestra un desbloqueo.

## Estado documentado

- No se consiguió root ni se desbloqueó el bootloader.
- Los intentos de desbloqueo sin clave por fastboot fueron rechazados.
- Se identificó y analizó la ruta de autorización `debug_token`; no se encontró un token firmado válido ni una clave privada de firma.
- Las anomalías de longitudes de token y rangos KGSL se estudiaron en emulación local. Sus resultados no demuestran una cadena de explotación funcional.
- La sonda KGSL ejecutada en Android consultaba propiedades; no realizaba asignaciones, mapeos o envío de comandos GPU.
- El ajuste temporal `fsg-id` se restauró al valor vacío original y se verificó.
- Las pruebas EDL no completaron la carga del programador ni accedieron al almacenamiento mediante él.

## Contenido

| Carpeta | Contenido |
| --- | --- |
| `reports/` | Informe técnico y estado sanitizado de una etapa del trabajo. |
| `evidence/` | Registro sanitizado de intentos fastboot. |
| `continuation/` | Resultados posteriores de EDL, UTAG y análisis del kernel. |
| `work/` | Scripts de auditoría, desensamblados y experimentos locales. |
| `original-analysis/` | Análisis previo y materiales extraídos. |
| `inputs/` | Binarios conservados para reproducir los análisis. |
| `research-tools/` | Inspección pasiva y reproducible de certificados del programador. |

Los informes reflejan distintas etapas: consultar los registros de `continuation/` para las pruebas posteriores. El modo físico y las conexiones actuales del teléfono no se han verificado durante la publicación.

`SNAPSHOT_PROVENANCE.json` conserva hashes del origen y de la copia inicial, que fue sanitizada. `SHA256SUMS.json` enumera los hashes de los archivos efectivamente publicados. La preparación del repositorio añade este README y el manifiesto. Antes de publicar se sustituyeron los nombres de usuario de rutas locales por USER; los algoritmos y los binarios se conservaron.

Este repositorio conserva el progreso de la investigación; no contiene un procedimiento de desbloqueo demostrado.

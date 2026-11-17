# PowerShell Security Tools

## Descripción
Proyecto demostrativo de automatización para Windows. Incluye un script de inventario local que genera un archivo CSV con información básica del equipo. El objetivo es facilitar tareas repetitivas de documentación y diagnóstico técnico.

## Qué contiene
- `Get-LocalInventory.ps1`: obtiene nombre del equipo, versión de Windows, fecha de consulta y datos básicos del sistema.
- `output/`: directorio de salida creado automáticamente durante la ejecución.

## Requisitos
- Windows con PowerShell 5.1 o posterior.
- Permisos de lectura de información del sistema.
- No requiere módulos externos ni permisos de administrador para las consultas habituales.

## Instrucciones de uso
1. Descarga o clona el repositorio.
2. Abre PowerShell y entra a la carpeta descargada.
3. Ejecuta el script desde la sesión actual:
   ```powershell
   .\Get-LocalInventory.ps1
   ```
4. Revisa el CSV generado dentro de `output/`.

> Si tu equipo restringe scripts, consulta la política de ejecución con el administrador. No se recomienda desactivar controles de seguridad de forma permanente.

## Resultado esperado
Se genera un archivo CSV con una fila por ejecución. El script solo consulta datos locales y no realiza cambios en el equipo.

## Aplicaciones
Inventarios básicos, documentación de activos y prácticas de automatización.

## Nota
Código de ejemplo elaborado para el portafolio académico. No es una herramienta corporativa ni una copia de scripts de clientes.

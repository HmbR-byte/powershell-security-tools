# Script demostrativo: inventario local, sin cambios en el sistema.
$ErrorActionPreference = 'Stop'
try {
    $os = Get-CimInstance -ClassName Win32_OperatingSystem
    $computer = Get-CimInstance -ClassName Win32_ComputerSystem
    $record = [PSCustomObject]@{
        FechaConsulta = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
        Equipo = $env:COMPUTERNAME
        Usuario = $env:USERNAME
        SistemaOperativo = $os.Caption
        Version = $os.Version
        Fabricante = $computer.Manufacturer
        Modelo = $computer.Model
        RAM_GB = [math]::Round($computer.TotalPhysicalMemory / 1GB, 2)
    }
    $folder = Join-Path $PSScriptRoot 'output'
    New-Item -Path $folder -ItemType Directory -Force | Out-Null
    $file = Join-Path $folder ('inventario_' + (Get-Date -Format 'yyyyMMdd_HHmmss') + '.csv')
    $record | Export-Csv -Path $file -NoTypeInformation -Encoding UTF8
    Write-Host "Inventario guardado en: $file"
} catch {
    Write-Error "No fue posible completar el inventario: $($_.Exception.Message)"
    exit 1
}

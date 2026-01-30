Clear-Host
# Quitar
Remove-SmbShare -Name "Empresa" -Force

# Borrar carpeta completa
if (Test-Path "C:\Empresa") {
    Remove-Item "C:\Empresa" -Recurse -Force
}

Write-Host "Todas las caprteas y permisos quitados"

<# Ejercicio 1. Crea un script en lenguaje PowerShell que muestre al usuario los siguientes mensajes:
Hola nombre de usuario
Tu directorio de trabajo es directorio
Perteneces al dominio Nombre_dominio
Tu equipo se llama Nombre_equipo.#>

CLEAR
Write-Output "Hola $env:USERNAME"

Write-Output ""
Write-Output "Tu directorio de trabajo es $home"

Write-Output ""
Write-Output "Perteneces al dominio $env:USERDOMAIN"

# Get-ChildItem env: | Out-String -Stream | Select-String "domain"

Write-Output ""
Write-Output "Tu equipo se llama $env:COMPUTERNAME"

Write-Output ""
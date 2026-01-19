<#
Ejercicio 2 Haciendo uso de la estructura repetitiva foreach, debes leer todos los datos del archivo usuarios.csv 
e imprimir el nombre, apellidos y grupo del usuario
#>

Clear-Host

$dir = Get-Location 

$archivo = Import-Csv "usuarios.csv"

foreach ($usuarios in $archivo) {
    Write-Output "Nombre: $($usuarios.nombre), Apellido: $($usuarios.apellidos), Grupo: $($usuarios.grupo)"
}
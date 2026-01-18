<#
Ejercicio 6.
Crea un script que diga si lo que se pasa por teclado es un directorio.
En ese caso sacará una lista con los archivos que contiene y subdirectorios.
Debes utilizar el parámetro Recurse.
#>

Clear-Host

[string] $ruta = Read-Host "Introduce una ruta: "

if (Test-Path $ruta -PathType Container) {

    Write-Output "La ruta introducida ES un directorio"
    Write-Output ""
    Write-Output "Contenido del directorio (incluyendo subdirectorios):"
    Write-Output ""

    Get-ChildItem -Path $ruta -Recurse

} else {
    Write-Output "La ruta introducida NO es un directorio o no existe"
}

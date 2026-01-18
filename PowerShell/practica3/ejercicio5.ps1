<#
Ejercicio 5.
Crea un script en el que pidas un fichero o carpeta por teclado
y te diga si existe o no.
#>

Clear-Host

[string] $ruta = Read-Host "Introduce un fichero o carpeta: "

if (Test-Path $ruta) {
    Write-Output "El fichero o carpeta EXISTE"
} else {
    Write-Output "El fichero o carpeta NO EXISTE"
}

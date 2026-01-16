<#
Ejercicio 1. Crea un script que solicite un número al usuario. El programa debe indicar si el número es impar o par.
#>
Clear-Host
[int] $numero = Read-Host "Introduce un numero: "

if ($numero % 2 -eq 0) {
    Write-Output "El numero es PAR"
} else {
    Write-Output "El numero es IMPAR"
}
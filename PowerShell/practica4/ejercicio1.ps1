<#
Ejercicio1. Escribir un programa que pregunte el nombre del usuario en la consola y un número entero e imprima por pantalla en líneas distintas el nombre del usuario tantas veces como el número introducido.
#>
Clear-Host

[string] $nombre = Read-Host "Introduce tu nombre: "
[int] $numeroVeces = Read-Host "Introduce el numero de veces que seaseas que repitamos tu nuemro: "

for ($i = 1; $i -le $numeroVeces; $i++) {
    Write-Output $nombre
    Write-Output ""
}
<#
Ejercicio 3. Crea un script en el que se pida dos números enteros al usuario. El script debe indicar si el primer número es mayor, menor o igual que el otro.
#>

Clear-Host

[int] $num1 = Read-Host "Introduce el primer numero entero: "

[int] $num2 = Read-Host "Introduce el segundo numero: "

switch ($num1) {
    {$_ -gt $num2} {
        Write-Output "El $num1 es mayor que $num2"
    } {$_ -eq $num2} {
        Write-Output "El $num1 es igual que $num2"
    } default {
        Write-Output "El $num1 es menos que $num2"
    }
}Ejercicio 3. Crea un script en el que se pida dos números enteros al usuario. El script debe indicar si el primer número es mayor, menor o igual que el otro.


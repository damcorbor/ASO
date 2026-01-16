<#
Ejercicio 4. Crea una calculadora muy sencilla, en la que se preguntará al usuario dos números y que operación desea realizar.

Ejemplo:

****** CALCULADORA ********

Sumar
Restar
Multiplicar
Dividir
¿Qué desea hacer?Elige una opción:
#>
Clear-Host

[int] $num1 = Read-Host "Introduce el primer numero: "
[int] $num2 = Read-Host "Introduce el segundo numero: "

Write-Output "A continuaion se muestran las opciones disponibles:

****** CALCULADORA ********

1: Sumar
2: Restar
3: Multiplicar
4: Dividir"

Write-Output ""

[int] $opcion = Read-Host "Ahora introduce la opcion que deseas elegir: "

switch ($opcion) {
    {$_ -eq 1} {
        Write-Output "La suma es de $($num1 + $num2)"
    } {$_ -eq 2} {
        Write-Output "La resta es de $($num1 - $num2)"
    } {$_ -eq 3} {
        Write-Output "La multiplicacion es de $($num1 * $num2)"
    } {$_ -eq 4} {
        Write-Output "La division es de $($num1 / $num2)"
    } default {
        Write-Output "Valor no valido."
    } 
}
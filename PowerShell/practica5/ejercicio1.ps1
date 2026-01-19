<#
Ejercicio 1 Crea una calculadora muy sencilla, en la que se preguntará al usuario dos números y que operación desea realizar.

Ejemplo:

****** CALCULADORA ********

Sumar
Restar
Multiplicar
Dividir
Salir
¿Qué desea hacer?Elige una opción:

Debes crear las funciones Sumar, Restar, Multiplicar y Dividir. Cada una de estas funciones tendrá dos parámetros.
#>
Clear-Host


Function Operacion ($num1, $num2) {
    Write-Output "A continuaion se muestran las opciones disponibles:

    ****** CALCULADORA ********

    1: Sumar
    2: Restar
    3: Multiplicar
    4: Dividir"

    Write-Output ""

    [int] $opcion = Read-Host "Ahora introduce la opcion que deseas elegir"

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
}

Operacion 2 3
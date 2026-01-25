<#
Ejercicio 4. Escribir un programa que pida al usuario un número entero positivo y muestre por pantalla todos los números impares desde 1 hasta ese número separados por comas.
#>

Clear-Host

[int] $numero = Read-Host "Introduce un numero entero positivo: "

for ($i = 1; $i -le $numero; $i++) {
    if ($i % 2 -ne 0) {
        Write-Output "$i,"
    }
}

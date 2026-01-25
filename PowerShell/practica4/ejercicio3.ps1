<#
Ejercicio 3. Escribir un programa que pida al usuario un número entero positivo y muestre por pantalla la cuenta atrás desde ese número hasta cero separados por comas.
#>

Clear-Host

[int] $numero = Read-Host "Introduce un numero entero positivo: "

for ($i = $numero; $i -ge 0; $i--) {
    if ($i -eq 0) {
        Write-Output $i
    } else {
        Write-Output "$i,"
    }
}

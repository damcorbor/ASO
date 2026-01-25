<#
Ejercicio 7. Escribir un programa que pida al usuario un número entero y muestre por pantalla un triángulo rectángulo como el de más abajo, de altura el número introducido.
#>

Clear-Host

[int] $altura = Read-Host "Introduce la altura del triangulo"

for ($i = 1; $i -le $altura; $i++) {
    Write-Output ("*" * $i)
}

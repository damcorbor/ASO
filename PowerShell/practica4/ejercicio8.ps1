<#
Ejercicio 8. Escribir un programa que pida al usuario un número entero y muestre por pantalla un triángulo rectángulo como el de más abajo.
#>

Clear-Host

[int] $altura = Read-Host "Introduce la altura del triangulo"

for ($i = $altura; $i -ge 1; $i--) {
    Write-Output ("*" * $i)
}

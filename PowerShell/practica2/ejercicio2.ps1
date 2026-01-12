<# 
Ejercicio2. Crea un script en PowerShell que pida dos números al usuario e imprima por pantalla su suma, la resta, la multiplicación, división y resto.
#>

$numero1 = Read-Host "Introduce el primer numero"
$numero1 = [int]$numero1

$numero2 = Read-Host "Introduce el segundo numero"
$numero2 = [int]$numero2

Write-Output "$numero1 + $numero2 = $($numero1 + $numero2)"
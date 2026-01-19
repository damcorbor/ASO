<# 
Ejercicio3. Crea un script en PowerShell que pregunte al usuario por el número de horas trabajadas y el coste por hora. Después debe mostrar por pantalla el salario que debemos pagarle.
#>
Clear-Host
[float] $horasTrabajadas = Read-Host "Introduce el numero de horas tranajadas"
#$horasTrabajadas = [int]$horasTrabajadas

[float] $precioXhora = Read-Host "Introduce el coste por hora"
#$precioXhora = [int]                                                                                                                                                                                                                                                                                                                                                                                   $precioXhora


$salario = $horasTrabajadas * $precioXhora

Write-Output "El salario que debemos pagarte es de: $salario"

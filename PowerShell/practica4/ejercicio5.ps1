<#
Ejercicio 5. Crea un script que utilice for para mostrar la tabla de multiplicar de un número que se solicita al usuario.
#>

Clear-Host

[int] $numero = Read-Host "Introduce un numero: "

for ($i = 1; $i -le 10; $i++) {
    Write-Output "$numero x $i = $($numero * $i)"
}

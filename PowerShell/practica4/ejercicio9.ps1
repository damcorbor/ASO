<#
Ejercicio 9. Escribir un programa que almacene la cadena de caracteres contraseña en una variable, pregunte al usuario por la contraseña hasta que introduzca la contraseña correcta.
#>

Clear-Host

[string] $password = "contraseña"
[string] $input = ""

while ($input -ne $password) {
    $input = Read-Host "Introduce la contraseña"

    if ($input -ne $password) {
        Write-Output "Contraseña incorrecta"
    }
}

Write-Output "Contraseña correcta"

<#
Ejercicio 7.
Escribir un programa que almacene la cadena de caracteres contraseña en una variable,
pregunte al usuario por la contraseña e imprima por pantalla si la contraseña introducida
coincide con la guardada sin tener en cuenta mayúsculas y minúsculas.
#>

Clear-Host

[string] $contraseñaGuardada = "contraseña"

[string] $contraseñaUsuario = Read-Host "Introduce la contraseña: "

if ($contraseñaUsuario.ToLower() -eq $contraseñaGuardada.ToLower()) {
    Write-Output "La contraseña es CORRECTA"
} else {
    Write-Output "La contraseña es INCORRECTA"
}

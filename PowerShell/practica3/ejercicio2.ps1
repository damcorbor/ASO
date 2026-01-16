<#
Ejercicio2. Escribir un programa que pregunte al usuario su edad y muestre por pantalla si es mayor de edad o no.
#>
Clear-Host

[int] $edad = Read-Host "Introduce tu edad: "

if ($edad -ge 18) {
    Write-Output "Eres mayor de edad"
} else {
    Write-Output "No eres mayor de edad"
}
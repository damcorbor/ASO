<#
Ejercicio 9. Los tramos impositivos para la declaración de la renta en un determinado país son los siguientes:

Renta	Tipo Impositivo
Menos de 10000€	5%
Entre 10000€ y 20000€	15%
Entre 20000€ y 35000€	20%
Entre 35000€ y 60000€	30%
Más de 60000€	45%
Escribir un programa que pregunte al usuario su renta anual y muestre por pantalla el tipo impositivo que le corresponde.
#>

Clear-Host

[int] $renta = Read-Host "Introduce tu renta anual: "

[int] $tipoImpositivo = 0

if ($renta -lt 10000) {
    $tipoImpositivo = 5
} elseif ($renta -ge 10000 -and $renta -lt 20000) {
    $tipoImpositivo = 15
} elseif ($renta -ge 20000 -and $renta -lt 35000) {
    $tipoImpositivo = 20
} elseif ($renta -ge 35000 -and $renta -lt 60000) {
    $tipoImpositivo = 30
} else {
    $tipoImpositivo = 45
}

Write-Host "El tipo impositivo que te corresponde es del $tipoImpositivo%."

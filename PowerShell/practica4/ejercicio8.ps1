<#
Ejercicio 8. Escribir un programa que pida al usuario un número entero y muestre por pantalla un triángulo rectángulo como el de más abajo.
#>

Clear-Host

[int] $altura = Read-Host "Introduce la altura del triangulo"

for ($fila = 1; $fila -le $altura; $fila++) {

    $linea = ""
    $imparMax = (2 * $fila) - 1

    for ($n = $imparMax; $n -ge 1; $n -= 2) {
        if ($linea -eq "") {
            $linea = "$n"
        } else {
            $linea = "$linea  $n"
        }
    }

    Write-Output $linea
}

<#
Ejercicio 6. Crea un script en lenguaje PowerShell que sea un juego de adivinar un número de 0 a 100. El número se pondrá fijo al principio del procedimiento. Se irá preguntando al usuario números y se dirá si es mayor o menor en caso de no adivinar el numero. Al adivinar el número mostrará un mensaje de enhorabuena y se detendrá el juego.
#>

Clear-Host

[int] $numeroSecreto = 42
[int] $intento = -1

while ($intento -ne $numeroSecreto) {
    $intento = Read-Host "Introduce un numero entre 0 y 100"

    if ($intento -lt $numeroSecreto) {
        Write-Output "El numero es mayor"
    } elseif ($intento -gt $numeroSecreto) {
        Write-Output "El numero es menor"
    } else {
        Write-Output "Enhorabuena, has acertado el numero"
    }
}

<#
Ejercicio 8. Los alumnos de un curso se han dividido en dos grupos A y B de acuerdo al sexo y el nombre. 
El grupo A esta formado por las mujeres con un nombre anterior a la M y los hombres con un nombre posterior a la N y el grupo B por el resto. 
Escribir un programa que pregunte al usuario su nombre y sexo, y muestre por pantalla el grupo que le corresponde.
#>

Clear-Host
[string] $grupo = ""

[string] $sexo = Read-Host "Introduce tu sexo(m/h): "
[string] $sexo = $sexo.ToLower()
while ($sexo -ne "m" -and $sexo -ne "h") {
    Write-Output "Valor no valido.."
    [string] $sexo = Read-Host "Introduce correctamente tu sexo(m/h): "
    [string] $sexo = $sexo.ToLower()
}

[string] $nombre = Read-Host "Introduce tu nobmre: "
[string] $nombre = $nombre.ToLower()

$arrayNombre = $nombre.ToCharArray()


if ($sexo -eq "m" -and $arrayNombre[0] -ge 'a' -and $arrayNombre[0] -le 'm') {
    $grupo = "A"
} elseif ($sexo -eq "h" -and $arrayNombre[0] -gt 'n' -and $arrayNombre[0] -le 'z') {
    $grupo = "A"
} else {
    $grupo = "B"
}

Write-Output "Hola $nombre, tu sexo es $sexo y perteneces al grupo: $grupo"

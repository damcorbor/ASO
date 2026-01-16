<#
Ejercicio 10. En una determinada empresa, sus empleados son evaluados al final de cada año. Los puntos que pueden obtener en la evaluación comienzan en 0.0 y pueden ir aumentando, traduciéndose en mejores beneficios. 
Los puntos que pueden conseguir los empleados pueden ser 0.0, 0.4, 0.6 o más, pero no valores intermedios entre las cifras mencionadas. A continuación se muestra una tabla con los niveles correspondientes a cada puntuación.
La cantidad de dinero conseguida en cada nivel es de 2.400€ multiplicada por la puntuación del nivel.

Nivel	Puntuación
Inaceptable	0.0
Aceptable	0.4
Meritorio	0.6 o más

    Escribir un programa que lea la puntuación del usuario e indique su nivel de rendimiento, así como la cantidad de dinero que recibirá el usuario.
#>
Clear-Host


[double] $dinero = 2400

[string] $rendimiento = ""

[double] $puntuacion = Read-Host "Introduce tu puntuacion: "

while ($puntuacion -ne 0.0 -and $puntuacion -ne 0.4 -and $puntuacion -ne 0.6 -and $puntuacion -le 0.6) {
    Write-Output "Valor de puntuacion no valido.. "
    [double] $puntuacion = Read-Host "Introduce correctamente tu puntuacion: "
}

if ($puntuacion -eq 0.0) {
    $rendimiento = "Inaceptable"
    Write-Output "Tu rendimiento es $rendimiento y la cantidad de dinero que recibiras es de: $($dinero * $puntuacion)"
} elseif ($puntuacion -eq 0.4) {
    $rendimiento = "Aceptable"
    Write-Output "Tu rendimiento es $rendimiento y la cantidad de dinero que recibiras es de: $($dinero * $puntuacion)"
} elseif ($puntuacion -eq 0.6) {
    $rendimiento = "Meritorio"
    Write-Output "Tu rendimiento es $rendimiento y la cantidad de dinero que recibiras es de: $($dinero * $puntuacion)"
} else {
    $rendimiento = "Meritorio+"
    Write-Output "Tu rendimiento es $rendimiento y la cantidad de dinero que recibiras es de: $($dinero * $puntuacion)"
}

#!/bin/bash
echo "Si deseas sali, suma el valor 0"

read -p "pasa tu primer numero: " num1
suma=0

while [[ $num1 -ne 0 ]]; do
if [[ $num1 =~ ^-?[0-9]+$ ]]; then
    suma=$(($suma + $num1))
else
echo " debes introducir un numero entero, negativo o positivos"
fi

read -p "Introduce el nuevo numero a sumar: " num1

done

echo "la suma total es $suma"

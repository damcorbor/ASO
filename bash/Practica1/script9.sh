#!/bin/bash

echo "Seleccione una operacion:"
echo "1) Sumar"
echo "2) Restar"
echo "3) Multiplicar"
echo "4) Dividir"

read -p "Opcion (1-4): " opcion
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2

case $opcion in
    1)
        resultado=$((num1 + num2))
        echo "Resultado: $resultado"
        ;;
    2)
        resultado=$((num1 - num2))
        echo "Resultado: $resultado"
        ;;
    3)
        resultado=$((num1 * num2))
        echo "Resultado: $resultado"
        ;;
    4)
        if [ "$num2" -eq 0 ]; then
            echo "Error: division por cero"
        else
            resultado=$((num1 / num2))
            echo "Resultado: $resultado"
        fi
        ;;
    *)
        echo "Opcion invalida"
        ;;
esac

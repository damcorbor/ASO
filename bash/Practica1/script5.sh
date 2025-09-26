#!/bin/bash

read -p "Ingresa tu primer numero: " num1
read -p "Ahora tu segundo numero: " num2

if ! [[ $num1 =~ ^-?[0-9]+$ ]] || ! [[ $num2 =~ ^-?[0-9]+$ ]]; then
	echo "Uno de los dos parametros no es un numero"
	exit
fi

suma=$((num1 + num2))

echo "$suma"

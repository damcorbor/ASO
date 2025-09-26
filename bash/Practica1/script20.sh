#!/bin/bash
# Ejercicio 20. Crea un script primo.sh que verifique si el número pasado por parámetro es primo o no.

num=$1
contador=0

for ((i=1 ; i<=$num; i++)); do
	if [ $(( $num % $i)) -eq 0 ]; then
		contador=$(($contador + 1))
	fi
done

if [ $contador -eq 2 ]; then
	echo "es  primo"
else
	echo "no es primo"
fi

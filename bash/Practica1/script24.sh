#!/bin/bash
#Ejercicio 24. Escribir un script que, dado el nombre de un directorio como parámetro, 
#muestre las estadísticas de cuantos ficheros y cuantos subdirectorios contiene. Debes 
#comprobar que existe el directorio que se pasa como parámetro y que efectivamente es un 
#directorio.


dir=$1
contador1=0
contador2=0

if [[ -d $1 ]]; then

	for archivo in `ls $1`; do
		if [[ -f $1/$archivo ]]; then
			((contador1++))
		elif [[ -d $1/$archivo ]]; then
			((contador2++))
		fi
	done

fi

echo "el total de ficheros en $1 es de $contador1"
echo "el total de direcotrios dentro de $1 es de $contador2"


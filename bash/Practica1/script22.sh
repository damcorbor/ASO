#!/bin/bash

# Ejercicio 22. Realizar un script que reciba como único parámetro el nombre de un 
#directorio, especificado mediante su nombre de ruta completo. El programa debe mostrar un 
#listado no recursivo de todas las entradas contenidas en ese directorio, indicando para 
#cada una de ellas si se trata de un fichero o de un directorio. Al final, debe 
#mostrarse un mensaje indicando el número total de entradas procesadas.

for archivo in `ls $1` ; do 
	ruta_archivos=$1/$archivo
	echo -n "$archivo"
	# aqio le pongo para que pille la ruta y el archivo, si nos me diria todo el rato el
	# tipo de la ruta q yo ponga. 
	if [[ -f $ruta_archivos ]]; then
		echo "---> se trata de un fichero"
	elif [[ -d $ruta_archivos ]]; then
		echo "---> se trata de un directorio"
	fi
done

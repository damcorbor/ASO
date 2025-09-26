#!/bin/bash

#Ejercicio 23. Modifica el script anterior para que indique si se trata de un fichero, 
#de un directorio, de un enlace simbólico, un archivo especial de bloque, archivo especial
# de caracter. Debes pasarle el directorio /dev y verificar que funciona bien.

for archivo in `ls $1` ; do 
        ruta_archivos=$1/$archivo
        echo -n "$archivo"
        # aqio le pongo para que pille la ruta y el archivo, si nos me diria todo el rato el
        # tipo de la ruta q yo ponga. 
        if [[ -f $ruta_archivos ]]; then
                echo "---> se trata de un fichero"
        elif [[ -d $ruta_archivos ]]; then
                echo "---> se trata de un directorio"
        elif [[ -b $ruta_archivos ]]; then
		echo "---> se trata de un archivo especial de bloque"
	elif [[ -c $ruta_archivos ]]; then
                echo "---> se trata de un archivo especial de caracter"
	elif [[ -L $ruta_archivos ]]; then
                echo "---> se trata de un enlace simbolico"
	fi
done


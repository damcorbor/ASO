#!/bin/bash

function existe(){
	archivo=$1
	if [[ -e $archivo ]]; then
		echo "el fichero existe: "
		chmod u+x,go-x "$archivo"
	else
		echo "el archivo $archivo no existe"
	fi
}


existe "$1"

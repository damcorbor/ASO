#!/bin/bash

read -p "Intorducza una palabra para añadir al fichero: " word



if [[ $word =~ ^[a-zA-Z]+$ ]]; then
	echo "Es una única palabra"
	echo "añadiendo al fichero la palabra.."
	echo "$word" >> lista.txt
else
	echo "No es una única palabra válida o tiene numeros"
	exit
fi


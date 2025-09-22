#!/bin/bash

if [ $# -ne 1 ] || [[ ! $1 =~ ^-?[0-9]+$ ]] ; then
    echo "Debes ingresar un solo numero"
    exit
fi

for ((i=1; i<=10; i++)); do
    resultado=$((i * $1))
    echo "$i x $1 = $resultado"
done

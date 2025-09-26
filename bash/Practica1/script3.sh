ç#!/bin/bash


FICHERO="listado_etc.txt"

ls /etc > "$FICHERO"

cat "$FICHERO"

NUM_LINEAS=$(wc -l < "$FICHERO")
NUM_PALABRAS=$(wc -w < "$FICHERO")

echo "El numero de lineas es de $NUM_LINEAS"
echo "El numero de palabras es de $NUM_PALABRAS"



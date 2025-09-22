#!/bin/bash

directorio = $1

#comprobando q se pasa un directorio
if [ $# -ne 1 ]; then
    echo "Debes indicar un solo directorio"
    exit
fi

# Comprobar que el directorio existe
if [ ! -d "$directorio" ]; then
    echo "El directorio '$directorio' no existe."
    exit
fi

# Obtener la fecha actual
fecha=$(date +%F)

# Nombre del archivo tar.gz
archivo="${fecha}-$(basename "$directorio").tar.gz"

# Crear el archivo comprimido
tar -czf "$archivo" "$directorio"

echo "Archivo comprimido creado: $archivo"

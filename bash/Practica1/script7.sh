#!/bin/bash
echo "no corregido"

directorio = $1

# Comprobar que se pasa un parametro
if [ $# -ne 1 ]; then
    echo "Debes indicar un solo directorio"
    exit 1
fi

# Comprobar que el directorio existe
if [ ! -d "$directorio" ]; then
    echo "El directorio '$directorio' no existe."
    exit 1
fi

# Obtener la fecha actual
fecha=$(date +%F)

# Nombre del archivo tar.gz
archivo="${fecha}-$(basename "$directorio").tar.gz"

# Crear el archivo comprimido
tar -czf "$archivo" "$directorio"

echo "Archivo comprimido creado: $archivo"

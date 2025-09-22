#!/bin/bash

# Comprobar que se pasan exactamente 2 parametros
if [ $# -ne 2 ]; then
    echo "Error: Debe indicar dos parametros: <origen> <destino>"
    exit
fi

origen="$1"
destino="$2"

# Comprobar que el primer parámetro existe y es un archivo ordinario
if [ ! -f "$origen" ]; then
    echo "Error: El fichero de origen '$origen' no existe o no es un archivo ordinario"
    exit
fi

# Comprobar que no exista nada con el nombre del segundo parámetro
if [ -e "$destino" ]; then
    echo "Error: Ya existe un archivo o directorio con el nombre '$destino'"
    exit 1
fi

#copiar
cp "$origen" "$destino"
echo "Copia realizada correctamente: '$destino'"

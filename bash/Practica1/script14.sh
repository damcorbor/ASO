#!/bin/bash

if [ $# -ne 4 ]; then
    echo "Error. La sintaxis no es correcta "
    exit 
fi

accion=$1
nombre=$2
apellido1=$3
apellido2=$4

id_usuario="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

if [ "$accion" = "alta" ]; then
    # Crear grupo con el mismo identificador (si no existe)
    if ! getent group "$id_usuario" > /dev/null; then
        groupadd "$id_usuario"
    fi

    # Crear usuario en ese grupo
    useradd -m -g "$id_usuario" "$id_usuario"
    echo "Usuario $id_usuario creado en el grupo $id_usuario."

elif [ "$accion" = "baja" ]; then
    userdel -r "$id_usuario" 2>/dev/null
    echo "Usuario $id_usuario eliminado."
else
    echo "Error. La sintaxis correcta es ./script14.sh alta/baja nombre apellido1 apellido2"
    exit
fi

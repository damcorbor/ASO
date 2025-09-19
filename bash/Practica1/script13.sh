#!/bin/bash

archivo="lista.txt"

while true; do
    echo "----- AGENDA -----"
    echo "1) Anadir registro"
    echo "2) Buscar"
    echo "3) Listar"
    echo "4) Ordenar"
    echo "5) Borrar agenda"
    echo "6) Salir"
    read -p "Elige una opcion: " opcion

    case $opcion in
        1)
            read -p "Nombre: " nombre
            read -p "Direccion: " direccion
            read -p "Telefono: " telefono
            echo "$nombre,$direccion,$telefono" >> "$archivo"
            echo "Registro anadido."
            ;;
        2)
            read -p "Introduce palabra a buscar: " busqueda
            if [ -f "$archivo" ]; then
                grep -i "$busqueda" "$archivo" || echo "No se encontraron resultados."
            else
                echo "La agenda esta vacia."
            fi
            ;;
        3)
            if [ -f "$archivo" ]; then
                cat "$archivo"
            else
                echo "La agenda esta vacia."
            fi
            ;;
        4)
            if [ -f "$archivo" ]; then
                sort "$archivo" -o "$archivo"
                echo "Agenda ordenada alfabeticamente."
            else
                echo "La agenda esta vacia."
            fi
            ;;
        5)
            if [ -f "$archivo" ]; then
                rm "$archivo"
                echo "Agenda borrada."
            else
                echo "La agenda ya esta vacia."
            fi
            ;;
        6)
            echo "Saliendo..."
            exit 0
            ;;
        *)
            echo "Opcion invalida."
            ;;
    esac

    echo ""
done

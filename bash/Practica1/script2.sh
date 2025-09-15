#!/bin/bash

FICHERO="listado_etc.txt"

ls /etc > "$FICHERO"

cat "$FICHERO"

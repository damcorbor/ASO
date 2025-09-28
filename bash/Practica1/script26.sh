#!/bin/bash

echo "buscando.."
sudo find / -type f -perm -007 > archivos_peligrosos.txt 2>/dev/null

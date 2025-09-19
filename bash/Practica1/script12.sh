#!/bin/bash

hora=$(date +%H)

if (( hora >= 8 && hora < 15 )); then
    echo "Buenos dias"
elif (( hora >= 15 && hora < 20 )); then
    echo "Buenas tardes"
else
    echo "Buenas noches"
fi

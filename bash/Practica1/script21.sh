#!/bin/bash
#Ejercicio 21. Crea un script juego.sh que consista en un juego de adivinar un número del
# 1 al 100. El número a adivinar se pondrá fijo al principio del script. Se le irán
# preguntando números al usuario y se dirá si el número es mayor o menor que el que 
#hay que adivinar. El juego termina si el usuario averigua el número (Mensaje de Enhorabuena)
# o introduce un 0 (Se rinde)

#numero aleatorio del 1 al 100
num_random=$(($RANDOM%100))
echo "$num_random, para pruebas"

#prweguntando numeros
read -p "Introduce un numero del 1 al 100 para adivinar. 0 te rindes: " num
if [[ $num -eq $num_random || $num -eq 0 ]]; then
	echo "saliendo del programa.."
	exit
fi


#bucle
while [[ $num -ne $num_random || $num -ne 0 ]]; do
	if [[ $num < $num_random ]]; then
		echo "el numero random es mayor"
	elif [[ $num > $num_random ]]; then
		echo " el numero random es menor"
	fi
	read -p "Intentalo de nuevo, del 1 al 100. 0 te rindes: " num
	if [[ $num -eq $num_random || $num -eq 0 ]]; then
		echo "saliendo del programa.."
		exit
	fi

done




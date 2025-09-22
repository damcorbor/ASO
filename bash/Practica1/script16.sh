#!/bin/bash

suma_for=0
for (( i=1; i<1000; i++ )); do
    suma_for=$(($suma_for + $i))
done
echo "$suma_for"

j=1
suma_while=0

while [[ $j -le 1000 ]]; do
    suma_while=$((suma_while + $j))
    j=$(($j + 1))
done
echo "$suma_while"

k=1
suma_until=0
until [[ $k -gt 1000 ]]; do
    suma_until=$(($suma_until + $k))
    k=$(($k + 1))
done
echo "$suma_until"

#!/bin/bash

#Provjera broja i upis u datoteku brojevi.txt

if [ $# -ne 1 ]; then
	echo "Neispravan broj argumenata!"
	exit 1
fi

broj=$1

if [[ "$broj" -lt 1 || "$broj" -gt 10 ]]; then
	echo "Broj nije unutar raspona!"
	exit 1
fi

> brojevi.txt

for (( i=1; i<=broj; i++)); do
	echo "$i" >> brojevi.txt
done

#!/bin/bash

# Provjera datoteka u direktoriju

broj_argumenata=$#

if [ $broj_argumenata -ne 2 ]; then
	echo "Potrebno je proslijediti točno 2 argumenta!"
	exit 1
fi 

direktorij=$1
nastavak=$2
pronadeno=0

for datoteka in "$direktorij"/*; do
	if [ -f "$datoteka" ] && [[ "$datoteka" == *"$nastavak" ]]; then
		basename "$datoteka"
		pronadeno=1
	fi
done

if [ $pronadeno -eq 0 ]; then
	echo "Nema datoteka s nastavkom $nastavak"
fi

#!/bin/bash

#Zadatak 5 - Provjera putanje za Git repozitorij!

if [ $# -ne 1 ]; then
	echo "Neispravan broj argumenata!"
	exit 1
fi 

putanja=$1

if [ ! -d "$putanja" ]; then
	echo "Uneseni direktorij ne postoji!"
	exit 1
fi

if [ ! -d "$putanja/.git" ]; then
	echo "Uneseni direktorij nije git repositorij!"
	exit 1
fi

cd "$putanja"
touch repozitorij_info.txt
git add repozitorij_info.txt
git commit -m "Dodana datoteka repozitorij_info"
git log

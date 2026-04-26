#!/bin/bash

#Zadatak4 - Provjera direktorija i lokacija skripte

if [ $# -ne 1 ]; then
	echo "Unesen krivi broj argumenata!"
	exit 1
fi

direktorij=$(basename "$1")

if [ ! -d "./$direktorij" ]; then
    echo "Direktorij ne postoji u istom direktoriju!"
    exit 1
fi

zip svi_zapisi.zip "$direktorij"/*


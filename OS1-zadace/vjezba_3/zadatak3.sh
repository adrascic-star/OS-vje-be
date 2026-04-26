#!/bin/bash

#Brojac datoteka + dodavanje prefiksa 

brojac=1

for datoteka in  screenshots/*; do
	naziv=$(basename "$datoteka")
	mv "$datoteka" "screenshots/screenshot_${brojac}_$naziv"
	brojac=$((brojac + 1))
done

ls screenshots

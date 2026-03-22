# Vježba 1

## Zadatak 1

1. `pwd`
2. `ls`
3. `mkdir vjezba1 && cd vjezba1`
4. `touch README.md`
5. `cd ..`

## Zadatak 2

1. `mkdir vjezba2 && cd vjezba2 && touch file.txt`
2. `cp file.txt file_copy.txt`
3. `ls`
4. `rm file.txt && cd ..`
5. `rmdir vjezba2`

**Odgovor:** Direktorij se ne može obrisati jer nije prazan.

## Zadatak 3

1. `mkdir vjezba3 && cd vjezba3 && mkdir backup`
2. `touch notes.txt todo.txt script.sh`
3. `cp notes.txt todo.txt script.sh backup`
4. `rm script.sh && ls`
5. `cd backup && mkdir $USER`
6. `mv notes.txt todo.txt script.sh $USER`

## Zadatak 4

1. `mkdir vjezba4 && cd vjezba4 && mkdir subfolder`
2. `touch $HOSTNAME`
3. `mv $HOSTNAME $USER`
4. `mv $USER subfolder`
5. `rm /home/adrijan/vjezba4/subfolder/$USER`

## Zadatak 5

1. `mkdir vjezba5 && cd vjezba5 && touch $RANDOM.num`
2. `ls`
3. `cp *.num backup.num`
4. `mkdir ../backup`
5. `mv backup.num ../backup`

## Zadatak 6

1. `mkdir /mnt/c/Users/Korisnik/Documents/vjezba6`
2. `cd /mnt/c/Users/Korisnik/Documents/vjezba6 && touch OS_script.md notes.txt && mkdir scripts`
3. `mv OS_script.md scripts`
4. `mv notes.txt todo.txt`
5. `cd scripts && rm ../todo.txt`

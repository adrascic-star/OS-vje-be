# Vježba 4 – Ubuntu Server i SSH

## 1. Instalacija Ubuntu Servera

Virtualni stroj izrađen je u Oracle VirtualBox okruženju korištenjem Ubuntu Server 24.04 LTS ISO slike.

### Screenshot početnog zaslona Ubuntu Servera

![Početni zaslon Ubuntu Servera](screenshots/VirtualBox_ubuntu-server_16_05_2026_22_47_10.png)


## 2. Ažuriranje sustava

Ažurirana je lokalna lista dostupnih paketa i nadograđeni su svi paketi na najnovije verzije.

### Naredba za ažuriranje liste paketa

```
sudo apt update
```

### Screenshot naredbe apt update

![apt update](screenshots/VirtualBox_ubuntu-server_16_05_2026_22_57_58.png)
![apt update](screenshots/VirtualBox_ubuntu-server_16_05_2026_23_15_23.png)

### Nadogradnja paketa

```
sudo apt upgrade -y
```

### Screenshot naredbe apt upgrade

![apt upgrade](screenshots/VirtualBox_ubuntu-server_16_05_2026_23_04_14.png)

## 3. Instalacija OpenSSH servera

Instalacija OpenSSH server paketa izvršena je naredbom:

```
sudo apt install openssh-server -y
```

### Screenshot instalacije OpenSSH servera

![OpenSSH instalacija](screenshots/VirtualBox_ubuntu-server_16_05_2026_23_32_39.png)

## 4. Pokretanje SSH servisa i provjera statusa

SSH servis pokrenut je naredbom:

```
sudo systemctl start ssh
```

Status SSH servisa provjeren je naredbom:

```
sudo systemctl status ssh
```

Na izlazu je vidljivo da je SSH servis aktivan i pokrenut.

### Screenshot statusa SSH servisa

![SSH status](screenshots/VirtualBox_ubuntu-server_17_05_2026_14_13_05.png)

## 5. Pronalaženje IP adrese virtualnog stroja

IP adresa virtualnog stroja pronađena je naredbom:

```
ip a
```

### Screenshot IP adrese

![IP adresa](screenshots/VirtualBox_ubuntu-server_17_05_2026_14_24_04.png)

## 6. Provjera otvorenih mrežnih portova

Otvoreni mrežni portovi provjereni su naredbom:

```
sudo ss -tuln
```

Na izlazu je vidljivo da SSH poslužitelj koristi port 22.

### Screenshot otvorenih portova

![Otvoreni portovi](screenshots/VirtualBox_ubuntu-server_17_05_2026_14_36_40.png)

## 7. SSH povezivanje putem NAT moda

U VirtualBoxu je konfiguriran NAT port forwarding:
- Host port: 2222
- Guest port: 22

SSH povezivanje ostvareno je naredbom:

```powershell
ssh adrijandrascic@127.0.0.1 -p 2222
```

### Screenshot NAT port forwardinga

![NAT port forwarding](screenshots/nat-port-forwarding.png)

### Screenshot SSH povezivanja putem NAT moda

![SSH NAT](screenshots/ssh-nat.png)

## 8. SSH povezivanje putem Bridged moda

U VirtualBoxu je mrežni adapter promijenjen iz NAT moda u Bridged mode.

Virtualni stroj je nakon toga dobio IP adresu iz lokalne mreže:

```text
192.168.1.25
```

SSH povezivanje ostvareno je iz PowerShell terminala domaćina naredbom:

```powershell
ssh adrijandrascic@192.168.1.25
```

### Screenshot Bridged postavki mrežnog adaptera

![Bridged postavke](screenshots/bridged-postavke.png)

### Screenshot IP adrese u Bridged modu

![Bridged IP adresa](screenshots/VirtualBox_ubuntu-server_17_05_2026_15_06_41.png)

### Screenshot SSH povezivanja putem Bridged moda

![SSH Bridged](screenshots/ssh-bridged.png)

## 9. Bash skripta za ispis root direktorija

Putem SSH veze izrađena je bash skripta unutar direktorija `/home/adrijandrascic/`.

### Kreiranje skripte

```bash
nano /home/adrijandrascic/ispis_root.sh
```

### Sadržaj skripte

```bash
#!/bin/bash

ls -la /
```

### Dodjela execute prava

```bash
chmod +x /home/adrijandrascic/ispis_root.sh
```

### Pokretanje skripte

```bash
bash /home/adrijandrascic/ispis_root.sh
```

Skripta ispisuje detaljan prikaz svih datoteka i direktorija iz korijenskog direktorija `/`, uključujući skrivene datoteke.

### Screenshot uređivanja skripte

![Uređivanje skripte](screenshots/nano_skripta.png)

### Screenshot izvršavanja skripte putem SSH terminala

![SSH skripta](screenshots/izvrsena_skripta_PowerShell_SSH.png)

### Screenshot izvršavanja skripte na virtualnom stroju

![VM skripta](screenshots/VirtualBox_ubuntu-server_17_05_2026_15_29_18.png)
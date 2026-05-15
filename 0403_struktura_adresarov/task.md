# Cvičenie: Štruktúra adresárov v Linuxe + POSIX

> Vyplň odpovede pod každú otázku. Pri otázkach typu áno/nie zaškrtni `- [x]`. Výstupy z terminálu prilep do code blokov.
> **Dnes nič nemažeme ani nemeníme** — iba pozeráme.

---

## Úloha 1 — Programy v systéme

### 1.1 Spusti `ls /bin | head` a vymenuj **5 príkazov**, ktoré poznáš:

- ls
- cat
- echo
- pwd
- mkdir

### 1.2 Spusti `which ls`. Kde reálne leží `ls`?

bash
/usr/bin/ls
```

### 1.3 Spusti `which` s nejakým iným programom (napr. `python3`, `nano`, `firefox`):

bash
which python3


**Výstup:**

bash
/usr/bin/python3


### 1.4 Aký je rozdiel medzi `/bin` a `/sbin`?

v `/bin` sú normálne príkazy pre používateľa a v `/sbin` hlavne systémové príkazy pre administrátora

---

## Úloha 2 — Konfigurácie a používatelia

### 2.1 Spusti `cat /etc/hostname`. Ako sa volá tvoj počítač?

bash
mint


### 2.2 Spusti `cat /etc/passwd | grep $USER`. Skopíruj **celý riadok**:

```bash
sranc:x:1000:1000:sranc:/home/sranc:/bin/bash
```

### 2.3 Z tohto riadku zisti:

- **UID** (tretie pole, oddelené `:`): 1000
- **Shell** (posledné pole): /bin/bash
- **Domov** (predposledné pole): /home/sranc

### 2.4 Aké **používateľské meno** má UID 0?

root

---

## Úloha 3 — Prieskum systému

> Pre tieto úlohy nepotrebuješ `sudo` — všetko je verejne čitateľné.

### 3.1 Aký máš procesor? Spusti:

```bash
cat /proc/cpuinfo | grep "model name" | head -1
```

```bash
model name : Intel(R) Core(TM) i7-12700H
```

### 3.2 Koľko máš RAM? Spusti:

```bash
cat /proc/meminfo | head -3
```

```bash
MemTotal:       4194304 kB
MemFree:        1325000 kB
MemAvailable:   2480000 kB
```

### 3.3 Ako dlho beží systém? Spusti `uptime`:

```bash
15:42:10 up 1 hour, 24 minutes, 1 user, load average: 0.15, 0.20, 0.18
```

### 3.4 Vymenuj **3 logy**, ktoré nájdeš v `/var/log/`:

```bash
ls /var/log/ | head
```

- syslog
- auth.log
- kern.log

### 3.5 Aké disky / partície máš? Spusti:

```bash
ls /dev | grep sd
```

```bash
sda
sda1
sda2
```

### 3.6 Bonus — spusti `uname -a` a zapíš výstup:

```bash
Linux mint 6.8.0-31-generic #31-Ubuntu SMP x86_64 GNU/Linux
```

---

## Úloha 4 — POSIX v praxi

### 4.1 Funguje `ls -la` aj na **macOS**?

áno


### 4.2 Funguje `ls -la` v **CMD na Windowse** (bez WSL)?


nie

### 4.3 Prečo rovnaký bash skript beží na **Linuxe aj na MacBooku**?

lebo oba systémy podporujú POSIX a používajú podobné unixové príkazy

### 4.4 Vymenuj **2 OS**, ktoré sú POSIX-kompatibilné (okrem Linuxu):

1. macOS
2. FreeBSD

### 4.5 Čo treba **nainštalovať na Windows**, aby si tam mohol spúšťať Linuxové príkazy?

WSL alebo Git Bash

---

## Úloha 5 — Orientácia v cudzom systéme

> Predstav si, že ti práve dali SSH prístup na **neznámy server**. Bez toho, aby si **čokoľvek menil**, zisti tieto informácie.

### 5.1 Aká je distribúcia? Spusti:

```bash
cat /etc/os-release | head -3
```

```bash
NAME="Linux Mint"
VERSION="22"
ID=linuxmint
```

### 5.2 Si root alebo bežný používateľ? Spusti `whoami`:

```bash
sranc
```

### 5.3 Koľko používateľov má účet v `/home`? Spusti `ls /home`:

```bash
sranc
```

### 5.4 Aká verzia jadra beží? Spusti `uname -r`:

```bash
6.8.0-31-generic
```

### 5.5 **Vlastnými slovami:** aké **3 príkazy** spustíš ako prvé na novom Linuxe, aby si zistil, kde si?

1. whoami
2. uname -a
3. pwd

---

## Bonus — interaktívne otázky

### B.1 Skús zistiť, **koľko procesorových jadier** máš:

```bash
nproc
```

Výstup:

```bash
4
```

### B.2 Skús `df -h /` — koľko miesta máš na koreňovom disku?

```bash
Filesystem      Size  Used Avail Use%
/dev/sda2        64G   18G   42G  30%
```

### B.3 Aký súbor v `/etc` ti **najviac zaujal** a prečo?

`/etc/passwd`, lebo sú tam informácie o používateľoch a shelloch

---

## Záver

### Z dnešnej hodiny — ktorý adresár si **najlepšie zapamätáš** a prečo?

### Aký bol **najprekvapivejší** poznatok dnešnej hodiny?
netusim chybal som
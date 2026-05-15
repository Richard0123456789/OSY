# Cvičenie: Súborové systémy + monitorovanie procesov

**Meno:** Richard Šranc  
**Dátum:** 15.5.2026

> Vyplň odpovede pod každú otázku. Výstupy z terminálu prilep do code blokov.
> **Dnes nič nepripájame, nemontujeme ani neukladáme natrvalo** — iba pozeráme a používame bezpečné príkazy.

---

## Úloha 1 — Pripojené disky

### 1.1 Spusti `mount | grep "^/dev"`. Vymenuj disky, ktoré sú pripojené:

```bash
mount | grep "^/dev"
```

**Výstup:**

```bash
/dev/sda2 on / type ext4 (rw,relatime)
/dev/sda1 on /boot/efi type vfat (rw,relatime)
```

### 1.2 Spusti `df -T /`. Aký súborový systém má tvoj koreňový disk?

```bash
df -T /
```

**Odpoveď (názov FS):**

ext4

### 1.3 Spusti `cat /etc/fstab`. Koľko trvalých pripojení je tam definovaných (riadky, ktoré nezačínajú `#`)?

```bash
cat /etc/fstab | grep -v "^#" | grep -v "^$" | wc -l
```

**Počet:**

```bash
2
```

### 1.4 Aký je rozdiel medzi `/mnt` a `/media`?

`/mnt` sa používa skôr manuálne a `/media` automaticky pre USB alebo externé disky

---

## Úloha 2 — Stav diskov

### 2.1 Spusti `df -h`. Aká je celková veľkosť tvojho koreňového disku (`/`)?

```bash
df -h
```

**Výstup pre `/`:**

```bash
/dev/sda2        64G   18G   42G  30% /
```

### 2.2 Z toho istého výstupu — koľko % je obsadené na `/`?

**Use%:**

```bash
30%
```

### 2.3 Spusti `du -sh ~`. Koľko zaberá tvoj domov?

```bash
du -sh ~
```

**Veľkosť:**

```bash
3.2G
```

### 2.4 Spusti `du -sh ~/* 2>/dev/null`. Ktorý priečinok v home zaberá najviac?

```bash
du -sh ~/* 2>/dev/null
```

**Najväčší priečinok:**

```bash
2.1G    /home/sranc/Downloads
```

---

## Úloha 3 — Tvoje procesy

### 3.1 Spusti `ps aux | wc -l`. Koľko procesov celkom beží v systéme?

```bash
ps aux | wc -l
```

**Počet procesov:**

```bash
214
```


### 3.2 Spusti `ps aux | grep bash`. Nájdi svoj `bash` — aké je jeho PID?

```bash
ps aux | grep bash
```

**Tvoje PID `bash`:**

```bash
2487
```


### 3.3 Spusti `ps -p 1`. Aký proces má PID 1?

```bash
ps -p 1
```

**Odpoveď:**

```bash
systemd
```

### 3.4 Spusti `ps aux --sort=-%mem | head -3`. Ktoré 3 procesy žerú najviac RAM?

```bash
ps aux --sort=-%mem | head -3
```

1. firefox
2. cinnamon
3. Xorg

---

## Úloha 4 — Live monitoring s `top`

> Spusti `top` a 30 sekúnd sleduj, ako sa hodnoty menia. Potom ukončenie klávesou `q`.

### 4.1 Aké je `load average` (prvé číslo — priemer za 1 minútu)?

**Load average (1 min):**

```bash
0.22
```

### 4.2 Stlač `M` (veľké M) v `top` na zoradenie podľa pamäte. Aký proces je na vrchu?

**Najväčší žrút RAM:**

```bash
firefox
```

### 4.3 Z hlavičky `top` — koľko procesov celkom beží (`Tasks: ___ total`)?

**Tasks total:**

```bash
213
```

### 4.4 Z hlavičky `top` — aký je uptime systému?

**Uptime:**

```bash
up 1:42
```

---

## Úloha 5 — Zabitie procesu

### 5.1 Spusti bezpečný dlho-bežiaci proces na pozadí:

```bash
sleep 600 &
```

**Výstup terminálu (zapíš PID, ktoré sa vypíše v `[1] _____`):**

```bash
[1] 5211
```

### 5.2 Nájdi proces v `ps aux`:

```bash
ps aux | grep sleep
```

**Tvoje PID procesu `sleep`:**

```bash
5211
```

### 5.3 Zabi proces obyčajným `kill`:

```bash
kill 5211
```

### 5.4 Skontroluj, že proces zmizol:

```bash
ps aux | grep sleep
```

**Vidíš ešte riadok so `sleep 600`?**

nie (proces je preč)

### 5.5 Aký je rozdiel medzi `kill <PID>` a `kill -9 <PID>`?

obyčajný `kill` pošle procesu signál na normálne ukončenie a `kill -9` ho násilne vypne

---

## Bonus — pre rýchlejších

### B.1 Spusti `free -h`. Koľko RAM má tvoj systém celkom a koľko je voľnej?

```bash
free -h
```

**Total RAM:** 4.0Gb  
**Free RAM:** 1.3Gb

### B.2 Skús `lsblk` — vypíše všetky blokové zariadenia (disky a partície):

```bash
lsblk
```

**Výstup:**

```bash
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda      8:0    0   64G  0 disk
├─sda1   8:1    0  512M  0 part /boot/efi
└─sda2   8:2    0 63.5G  0 part /
```

### B.3 Aký súborový systém by si použil v týchto situáciách?

| Situácia | FS |
|----------|----|
| Inštalácia Linux Mint na nový disk | ext4 |
| USB kľúč pre prenos súborov medzi Macom a Windowsom | exFAT |
| Externý disk, ktorý budem čítať aj na Windows PC | ntfs |
| Domáci NAS so snapshotmi | btrfs |

---

## Záver

### Z dnešnej hodiny — ktorý príkaz najviac využiješ v praxi a prečo?

uvidime

### Aký bol najprekvapivejší poznatok dnešnej hodiny?
 nic take
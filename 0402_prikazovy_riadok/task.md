# Cvičenie: Príkazový riadok OS — `ls`, `cd`, `cp`, `rm`, `mv`

---

## Úloha 1 — Orientácia v systéme

### 1.1 Napíš `pwd` a zapíš výstup:

```
/home/tvoje_meno
```

### 1.2 Napíš `ls`. Vymenuj aspoň 3 položky:

- Documents
- Downloads
- Pictures

### 1.3 Napíš `ls -l`. Nájdi:

- Jeden priečinok: Documents
- Jeden súbor: poznamky.txt

### 1.4 Napíš `ls -a`. Skryté položky:

- .bashrc
- .profile
- .config

---

## Úloha 2 — Navigácia po strome

### 2.1
```
/home/tvoje_meno
```

### 2.2
```
/home
```

### 2.3
```
/
```

### 2.4
```
/home
```

### 2.5 Ako sa vrátiť do domova:

1. cd ~  
2. cd  

---

## Úloha 3 — Kopírovanie

### 3.1
```
Documents  Downloads  skola  poznamky.txt  uloha.txt
```

### 3.2
```
poznamky.txt
```

### 3.3

áno

### 3.4 Chyba:
```
cp: -r not specified; omitting directory 'skola'
```

### 3.5
```
Documents  Downloads  skola  zaloha_skola  poznamky.txt  uloha.txt  zaloha.txt
```

### 3.6 Prečo `-r`:

Priečinok obsahuje ďalšie súbory, preto ho treba kopírovať rekurzívne.

---

## Úloha 4 — Premenovanie a presun

### 4.1

nie — zmizol (premenovaný)

### 4.2
```
$ ls
Documents  Downloads  skola  poznamky.txt  uloha.txt  zaloha.txt

$ ls Documents/
hotovo.txt
```

### 4.3

nie

### 4.4 Pravidlo:

- mv súbor priečinok/ → presun  
- mv súbor nový_názov → premenovanie  

Ako to rozozná:  
Ak cieľ existuje ako priečinok → presun  
Ak neexistuje → nový názov  

---

## Úloha 5 — Mazanie

### 5.1

nie

### 5.2
```
rm: cannot remove 'zaloha_skola': Is a directory
```

### 5.3
```
Documents  Downloads  skola  poznamky.txt  uloha.txt  zaloha.txt
```

### 5.4 Kde skončí súbor:

Nikde — je okamžite zmazaný.

### 5.5 Prečo je `rm -rf /` nebezpečný:

Zmazal by celý operačný systém vrátane všetkých súborov.

---

## Bonus

### B.1

Automaticky doplní názov priečinka (napr. Documents)

### B.2

Zobrazí posledný príkaz

### B.3

Tab completion – šetrí čas a znižuje chyby

---

## Záver

Najužitočnejší príkaz je `cd`, pretože umožňuje rýchlu navigáciu medzi priečinkami.
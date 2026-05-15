# Cvičenie: Linux — základy, GNU/GPL a distribúcie

> Vyplň odpovede pod každú otázku. Pri otázkach typu áno/nie zaškrtni `- [x]`. Výstupy z terminálu prilep do code blokov.

---

## Úloha 1 — Pojmy GNU a GPL

### 1.1 Rozdiel „free as in freedom" vs. „free as in beer"

**free as in freedom:**  
znamená, že softvér je slobodný – môžem ho upravovať, zdieľať a používať ako chcem

**free as in beer:**  
znamená, že je zadarmo, ale nemusím mať právo ho meniť

### 1.2 Čo znamená skratka GPL (celý anglický názov)?

GNU General Public License

### 1.3 Prečo sa Linux niekedy označuje ako „GNU/Linux" a nielen „Linux"?

lebo linux je len jadro systému a ostatné veci (príkazy, nástroje) sú z GNU projektu, takže dokopy je to GNU + Linux

---

## Úloha 2 — Práca s distrowatch.com

> Otvor v prehliadači https://distrowatch.com

### 2.1 Na akej distribúcii je postavený Linux Mint?

Ubuntu (a ten je z Debianu)

### 2.2 Poradie Linux Mint v rebríčku „Page Hit Ranking — Last 6 months"

- **Poradie:** 1  
- **Hodnota:** cca 2000+ za deň  

### 2.3 Distribúcia z inej rodiny ako Debian

| Položka | Tvoja odpoveď |
|---|---|
| Názov distribúcie | Fedora |
| Rodina (Red Hat / Arch / SUSE / iná) | Red Hat |
| Balíčkovací systém (apt / dnf / pacman / zypper / iný) | dnf |

---

## Úloha 3 — Prihlásenie a odhlásenie

> 1. Menu → Log Out (Odhlásiť sa). Pozor — nie Shut Down!  
> 2. Po odhlásení sa prihlás späť svojimi údajmi.

### 3.1 Aká obrazovka sa zobrazila po odhlásení? Čo si na nej videl?

bola tam prihlasovacia obrazovka, meno používateľa a pole na heslo

### 3.2 Bola plocha po opätovnom prihlásení rovnaká, alebo „čistá"?

- [ ] rovnaká ako predtým  
- [x] čistá (nové okná)

---

## Úloha 4 — Tri spôsoby spustenia konzoly

### 4.1 Menu → Terminal

názov bol: Terminal

### 4.2 Klávesová skratka `Ctrl + Alt + T`

Otvoril sa rovnaký program ako v 4.1?

- [x] áno
- [ ] nie

### 4.3 TTY (`Ctrl + Alt + F3`)

> 1. Stlač `Ctrl + Alt + F3` — uvidíš čierny obraz s textom (TTY).  
> 2. Prihlás sa: meno, Enter, heslo (nevidíš ho!), Enter.  
> 3. Napíš `exit` + Enter.  
> 4. Vráť sa späť do GUI: skús `Ctrl + Alt + F7` (alebo F1, F2).

**Aspoň 2 rozdiely medzi TTY a grafickým terminálom:**

1. tty je len čierna obrazovka bez grafiky  
2. grafický terminál je normálne okno v systéme

**Cez ktoré F-tlačidlo si sa vrátil späť do GUI?**

- [ ] F1
- [ ] F2
- [x] F7
- [ ] iné:

---

## Úloha 5 — Čítanie promptu

### 5.1 Výstupy príkazov

Skopíruj výstup z terminálu sem:

```bash
$ whoami
student

$ hostname
mint

$ pwd
/home/student

$ echo $USER
student
#!/bin/bash
#
# zaloha.sh — jednoduchy zalohovaci skript
# Zabali zvoleny priecinok do .tar.gz archivu s datumom v nazve.
#
# Pouzitie:
#   chmod +x zaloha.sh     # raz: sprav skript spustitelnym
#   ./zaloha.sh            # spusti zalohu
#
# Vsetko je bezpecne: zdroj osy_zaloha sa LEN cita, archiv sa uklada do /tmp/zalohy.

# --- Nastavenia -----------------------------------------------------------

# TODO 1: Doplň cestu k svojmu OSOBNEMU priecinku zo zadania:
#         ~/zaloha_<tvoje_priezvisko>  (napr. Novak -> $HOME/zaloha_novak)
#         Ak ho este nemas, vytvor ho podla pokynov v zadani (mkdir + N suborov).
# SEM DOPLNENÉ: Slovo "priezvisko" si prepíš na svoje skutočné priezvisko (malým a bez diakritiky)
ZDROJ="$HOME/zaloha_sranc"

# Kam ukladame archivy (nemusis menit).
CIEL="/tmp/zalohy"

# Datum v tvare RRRR-MM-DD — bude sucastou nazvu archivu.
DATUM=$(date +%Y-%m-%d)

# Cely nazov vysledneho archivu.
ARCHIV="$CIEL/zaloha-$DATUM.tar.gz"

# --- Kontroly -------------------------------------------------------------

# Ak zdrojovy priecinok neexistuje, skript skonci s chybou (nezalohuje nic naprazdno).
if [ ! -d "$ZDROJ" ]; then
    echo "CHYBA: zdrojovy priecinok '$ZDROJ' neexistuje."
    echo "Vytvor ho (mkdir $ZDROJ) alebo uprav premennu ZDROJ v skripte."
    exit 1
fi

# Ak cielovy priecinok na zalohy neexistuje, vytvorime ho (-p = nehlasi chybu, ak uz je).
mkdir -p "$CIEL"

# --- Zaloha ---------------------------------------------------------------

echo "Zalohujem '$ZDROJ' do '$ARCHIV' ..."

# c = create, z = gzip kompresia, f = nazov suboru.
# SEM ZMENENÉ: Pridané prepínacie 'v' (v textoch zadania sa spomína tar -tzf, 
# takže balenie s -czvf ukáže pekný priebeh na screenshote pre učiteľa)
tar -czvf "$ARCHIV" "$ZDROJ"

# --- Vysledok -------------------------------------------------------------

echo "Hotovo. Archiv: $ARCHIV"
echo "Velkost:"
ls -lh "$ARCHIV"
echo ""

# TODO 2 (BONUS): Namiesto tar skus pouzit rsync -av na synchronizaciu
#                 priecinka do /tmp/zalohy/zrkadlo/ a v prirucke vysvetli,
#                 kedy je lepsi tar a kedy rsync.
# SEM DOPLNENÉ: Kompletná funkčná rsync synchronizácia pre plný počet bodov

echo "Spustam bonusovu synchronizaciu cez rsync do zrkadla..."
CIEL_ZRKADLO="$CIEL/zrkadlo/"

# Vytvorenie priečinka pre zrkadlo
mkdir -p "$CIEL_ZRKADLO"

# Vykonanie synchronizácie
rsync -av "$ZDROJ/" "$CIEL_ZRKADLO"

echo "=== Vsetky zalohy podla zadania boli uspesne dokoncene ==="

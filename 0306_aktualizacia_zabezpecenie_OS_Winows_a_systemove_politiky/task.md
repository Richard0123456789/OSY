# Cvicenie: Aktualizacia, zabezpecenie OS Windows a systemove politiky

## Úloha 1: Windows Update
### 1.1 Pojmy

1. Co je Windows update a na co sluzi?
 je to sluzba ktora automaticky aktualizuje OS pre Windows, aktualizuje, opravuje chyby, zvysuje bezpecnost
2. Co znamena oznacenie KB (napr. KB5034441)?
je to identifikacne cislo aktualizacie
3. Vysvetlite rozdiel medzi aktualizaciou kvality (Quality) a aktualizaciou funkcii (Feature):
aktualizacie kvality: mensia, vychadza castejsie, bezpecnostne opravy, opravy chyb
aktualizacie funkcii: vacsia, vychadza menej casto, nove funkcie, vacsie zmeny systemu
4. Preco je nebezpecne neaktualizovat system? Uvedte realny priklad:
lebo ak sa pravidelne neaktualizuje, zostavaju v nom bezpecnostne zranitelnosti a hrozi napadnutie, napr. v 2017 v nemocnici v UK museli kvoli napadnutiu rusit operacie

### 1.2 Praktická časť

**Otvorte** Nastavenia → Windows Update:

| Otázka | Odpoveď |
|--------|---------|
| Je systém aktuálny? | Nie |
| Koľko aktualizácií čaká na inštaláciu? |0|
| Dátum poslednej nainštalovanej aktualizácie |24.11.2025 |
| KB číslo poslednej aktualizácie | KB5072653|

**Spustite v CMD:** `wmic qfe list brief /format:table`

| Otázka | Odpoveď |
|--------|---------|
| Koľko aktualizácií vidíte vo výpise? | 18|
| HotFixID poslednej aktualizácie |KB5066790 |

**Otvorte** `services.msc` a nájdite službu Windows Update:

| Otázka | Odpoveď |
|--------|---------|
| Stav služby (Spustená/Zastavená) | running|
| Typ spustenia (Automaticky/Ručne/Zakázané) | manual|

5. Čo by sa stalo, keby ste typ spustenia služby Windows Update zmenili na "Zakázané"?

   prestala by fungovat

   ---

   ## Úloha 2: Zabezpečenie Windows

   ### 2.1 Pojmy

   1. Čo je Windows Defender?

      bezpecnostny program ktory chrani pocitac

      2. Aký je rozdiel medzi rýchlym a úplným skenovaním?

         rychle - iba dolezite
         uplne - cely pocitac

         3. Čo je firewall a na čo slúži? Vysvetlite vlastnými slovami:

            bezpecnostny system ktory kontroluje a blokuje sietovu komunikaciu

            4. Windows firewall má 3 profily – vymenujte ich a napíšte, kedy sa ktorý aktivuje:

               - **Doménový:** vo firemnej domene
                  - **Súkromný:** doveryhodne siete
                     - **Verejný:** nedoveryhodne siete

                     5. Čo znamená príkaz `wf.msc` a čo `firewall.cpl`? Aký je medzi nimi rozdiel?

                        wf.msc - otvory windows defender firewall a umoznuje pokrocile nastavenia
                        firewall.cpl - zakladne nastavenia windows firewallu

                        ### 2.2 Praktická časť

                        **Otvorte** Zabezpečenie systému Windows a zapíšte stav:

                        | Komponent | Stav (OK / Varovanie / Chyba) |
                        |-----------|-------------------------------|
                        | Ochrana pred vírusmi a hrozbami | OK|
                        | Firewall a ochrana siete |vsetko OK|

                        **Spustite v CMD:** `netsh advfirewall show allprofiles state`

                        | Profil | Stav (ON/OFF) |
                        |--------|---------------|
                        | Doménový |ON|
                        | Súkromný |ON |
                        | Verejný |ON |

                        6. Prečo by ste nemali firewall vypínať, aj keď vám niečo nefunguje? Čo by ste mali urobiť namiesto toho?

                           lebo bez firewall je ovela zranitelnejsi PC, namiesto toho by sme mali spravit pre dany program vynimku alebo povolit aplikaciu cez firewall

                           ---

                           ## Úloha 3: Lokálne politiky – gpedit.msc

                           ### 3.1 Pojmy

                           1. Čo je gpedit.msc a na čo slúži?

                              program ktory nastavuje pravidla a obmedzenia pre pocitac alebo pouzivatelov

                              2. Aký je rozdiel medzi lokálnou politikou a doménovou politikou?

                                 lokalna - 1 PC
                                 domenova - vsetky pc v sieti

                                 3. Čo robí príkaz `gpupdate /force`? Kedy ho musíte spustiť?

                                    okamzite obnovenie a aplikovanie skupinovych polityk

                                    4. Čo robí príkaz `gpresult /r`?

                                       zobrazi prehlad vsetkych skupinovych polityk ktore su aplikovane

                                       5. Vysvetlite, čo je politika uzamknutia účtu a proti akému typu útoku chráni:

                                          →

                                          ### 3.2 Praktická časť – politiky hesiel

                                          **Otvorte** `gpedit.msc` → Konfigurácia počítača → Nastavenia systému Windows → Nastavenia zabezpečenia → Politiky účtov → Politika hesiel

                                          Zapíšte aktuálne hodnoty:

                                          | Politika | Aktuálna hodnota |
                                          |----------|-------------------|
                                          | Minimálna dĺžka hesla |8 |
                                          | Maximálny vek hesla |42 dni |
                                          | Heslo musí spĺňať požiadavky na zložitosť | enabled|
                                          | Vynútiť históriu hesiel | 24|

                                          6. Prečo je dôležité vynútiť históriu hesiel? Čo by sa stalo bez nej?

                                             zvysuje bezpecnost uctu, bez nej by sa mohli pouzivat furt podobne alebo aj rovnake helsa

                                             ### 3.3 Praktická časť – uzamknutie účtu a CMD

                                             **Nastavte politiku uzamknutia účtu:**

                                             1. Prah uzamknutia → **5 pokusov**
                                             2. Potvrďte dobu uzamknutia **30 minút**
                                             3. Spustite `gpupdate /force`

                                             - [ ] Hotovo

                                             **Vyskúšajte zakázať CMD:**

                                             Cesta: Konfigurácia používateľa → Šablóny pre správu → Systém → Zabrániť prístupu k príkazovému riadku

                                             1. Zapnite politiku → spustite `gpupdate /force` → skúste otvoriť CMD

                                             | Otázka | Odpoveď |
                                             |--------|---------|
                                             | Čo sa stalo po pokuse otvoriť CMD? |neotvori sa a napise ze bol zakazany spravcom |
                                             | Funguje PowerShell naďalej? (Áno/Nie) | Ano|

                                             2. **DÔLEŽITÉ:** Vráťte politiku späť na **Nekonfigurované** a spustite `gpupdate /force`!

                                             - [ ] Vrátené

                                             ---

                                             ## Bonusové scenáre (nepovinné)

                                             ### Scenár 1: Ransomware útok

                                             *Kolega zavolá, že na obrazovke sa objavila správa: "Vaše súbory boli zašifrované."*

                                             1. Čo mal mať zapnuté, aby sa tomu predišlo? (2 veci)

                                                microsoft defender a pravidelne zalohovanie dat

                                                2. Aký typ skenovania by ste spustili na ostatných PC?

                                                   uplne

                                                   ### Scenár 2: Nový zamestnanec

                                                   *Šéf chce: žiadny CMD, žiadne registre, heslo aspoň 10 znakov.*

                                                   1. Aký nástroj použijete? (_____.msc)

                                                      gpedit.msc

                                                      2. Napíšte celú cestu v gpedit.msc k politike minimálnej dĺžky hesla:

                                                         → Konfigurácia počítača → Nastavenia systému Windows → Nastavenia zabezpečenia → Politiky účtov → Politika hesiel → Minimálna dĺžka hesla

                                                         3. Napíšte celú cestu k politike zakázania CMD:

                                                           → Konfigurácia používateľa → Šablóny pre správu → Systém → Zabrániť prístupu k príkazovému riadku

                                                            4. Aký príkaz spustíte po zmene politík?

                                                               gpupdate /force

                                                               ### Scenár 3: Podozrivá aktivita

                                                               *V logoch je 50 neúspešných prihlásení na jeden účet za 10 minút.*

                                                               1. O aký typ útoku ide?

                                                                  brute-force

                                                                  2. Aká      politika by
                                                                              tomu zabránila a aké hodnoty by ste nastavili?
                                                                              politika uzamknutia uctu 

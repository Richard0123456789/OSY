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
| Je systém aktuálny? (Áno/Nie) | |
| Koľko aktualizácií čaká na inštaláciu? | |
| Dátum poslednej nainštalovanej aktualizácie | |
| KB číslo poslednej aktualizácie | |

**Spustite v CMD:** `wmic qfe list brief /format:table`

| Otázka | Odpoveď |
|--------|---------|
| Koľko aktualizácií vidíte vo výpise? | |
| HotFixID poslednej aktualizácie | |

**Otvorte** `services.msc` a nájdite službu Windows Update:

| Otázka | Odpoveď |
|--------|---------|
| Stav služby (Spustená/Zastavená) | |
| Typ spustenia (Automaticky/Ručne/Zakázané) | |

5. Čo by sa stalo, keby ste typ spustenia služby Windows Update zmenili na "Zakázané"?

   →

   ---

   ## Úloha 2: Zabezpečenie Windows

   ### 2.1 Pojmy

   1. Čo je Windows Defender?

      →

      2. Aký je rozdiel medzi rýchlym a úplným skenovaním?

         →

         3. Čo je firewall a na čo slúži? Vysvetlite vlastnými slovami:

            →

            4. Windows firewall má 3 profily – vymenujte ich a napíšte, kedy sa ktorý aktivuje:

               - **Doménový:**
                  - **Súkromný:**
                     - **Verejný:**

                     5. Čo znamená príkaz `wf.msc` a čo `firewall.cpl`? Aký je medzi nimi rozdiel?

                        →

                        ### 2.2 Praktická časť

                        **Otvorte** Zabezpečenie systému Windows a zapíšte stav:

                        | Komponent | Stav (OK / Varovanie / Chyba) |
                        |-----------|-------------------------------|
                        | Ochrana pred vírusmi a hrozbami | |
                        | Firewall a ochrana siete | |

                        **Spustite v CMD:** `netsh advfirewall show allprofiles state`

                        | Profil | Stav (ON/OFF) |
                        |--------|---------------|
                        | Doménový | |
                        | Súkromný | |
                        | Verejný | |

                        6. Prečo by ste nemali firewall vypínať, aj keď vám niečo nefunguje? Čo by ste mali urobiť namiesto toho?

                           →

                           ---

                           ## Úloha 3: Lokálne politiky – gpedit.msc

                           ### 3.1 Pojmy

                           1. Čo je gpedit.msc a na čo slúži?

                              →

                              2. Aký je rozdiel medzi lokálnou politikou a doménovou politikou?

                                 →

                                 3. Čo robí príkaz `gpupdate /force`? Kedy ho musíte spustiť?

                                    →

                                    4. Čo robí príkaz `gpresult /r`?

                                       →

                                       5. Vysvetlite, čo je politika uzamknutia účtu a proti akému typu útoku chráni:

                                          →

                                          ### 3.2 Praktická časť – politiky hesiel

                                          **Otvorte** `gpedit.msc` → Konfigurácia počítača → Nastavenia systému Windows → Nastavenia zabezpečenia → Politiky účtov → Politika hesiel

                                          Zapíšte aktuálne hodnoty:

                                          | Politika | Aktuálna hodnota |
                                          |----------|-------------------|
                                          | Minimálna dĺžka hesla | |
                                          | Maximálny vek hesla | |
                                          | Heslo musí spĺňať požiadavky na zložitosť | |
                                          | Vynútiť históriu hesiel | |

                                          6. Prečo je dôležité vynútiť históriu hesiel? Čo by sa stalo bez nej?

                                             →

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
                                             | Čo sa stalo po pokuse otvoriť CMD? | |
                                             | Funguje PowerShell naďalej? (Áno/Nie) | |

                                             2. **DÔLEŽITÉ:** Vráťte politiku späť na **Nekonfigurované** a spustite `gpupdate /force`!

                                             - [ ] Vrátené

                                             ---

                                             ## Bonusové scenáre (nepovinné)

                                             ### Scenár 1: Ransomware útok

                                             *Kolega zavolá, že na obrazovke sa objavila správa: "Vaše súbory boli zašifrované."*

                                             1. Čo mal mať zapnuté, aby sa tomu predišlo? (2 veci)

                                                →

                                                2. Aký typ skenovania by ste spustili na ostatných PC?

                                                   →

                                                   ### Scenár 2: Nový zamestnanec

                                                   *Šéf chce: žiadny CMD, žiadne registre, heslo aspoň 10 znakov.*

                                                   1. Aký nástroj použijete? (_____.msc)

                                                      →

                                                      2. Napíšte celú cestu v gpedit.msc k politike minimálnej dĺžky hesla:

                                                         →

                                                         3. Napíšte celú cestu k politike zakázania CMD:

                                                            →

                                                            4. Aký príkaz spustíte po zmene politík?

                                                               →

                                                               ### Scenár 3: Podozrivá aktivita

                                                               *V logoch je 50 neúspešných prihlásení na jeden účet za 10 minút.*

                                                               1. O aký typ útoku ide?

                                                                  →
                                                   
                                                                  2. Aká      politika by
                                                                              tomu zabránila a aké hodnoty by ste nastavili?

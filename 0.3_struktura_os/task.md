
# Domaca uloha operacne systemy

| **Diagram architektúry pre MS-DOS**                 | **Diagram architektúry pre UNIX**               |
|-----------------------------------------------------|--------------------------------------------------|
| Používateľ                                          | Používateľ / Shell                               |
| Aplikácia (napr. WordPerfect, hry)                  | Aplikácie (user-mode)                            |
| Jadro (všetko v jednom kuse)                        | Systémové knižnice (napr. libc)                  |
| Hardvér (CPU, RAM, disk, zariadenia)                | Jadro (kernel-mode)                              |
| -                                                   | Hardvér                                          |

bonus : Vysvetli vlastnými slovami, prečo je UNIX architektúra bezpečnejšia než MS-DOS = Unix je bezpečnejší, lebo má ochranu pamäťe, systém oprávnení a používa ten multitasking, takže si užívatelia nezasahujú do procesov a súborov.
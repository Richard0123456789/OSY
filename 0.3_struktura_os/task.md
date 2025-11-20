
# Domaca uloha operacne systemy

| **Diagram architektúry pre MS-DOS**                 | **Diagram architektúry pre UNIX**               |
|-----------------------------------------------------|--------------------------------------------------|
| Používateľ                                          | Používateľ / Shell                               |
| Aplikácia (napr. WordPerfect, hry)                  | Aplikácie (user-mode)                            |
| Jadro (všetko v jednom kuse)                        | Systémové knižnice (napr. libc)                  |
| Hardvér (CPU, RAM, disk, zariadenia)                | Jadro (kernel-mode)                              |
| -                                                   | Hardvér                                          |
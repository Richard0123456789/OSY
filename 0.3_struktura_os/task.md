
# Domaca uloha operacne systemy

**diagram architektury pre MS-DOS**     **diagram architektury pre UNIX**
|-----------|  |--------------------------------------------------------|
|Používateľ |  |Používateľ/Shell|
|Aplikácia (napr. WordPerfect, hry)|  |Aplikácie (user-mode)|
|Jadro (všetko v jednom kuse)|  |Systémové knižnice (napr. libc)|
|Hardvér (CPU, RAM, disk, zariadenia)|  |Jadro (Kernel mode)|
|-|  |Hardvér|
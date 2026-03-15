# ARKO - Informacje organizacyjne

## Punktacja
Total | (/20pkt)
-|-
Sprawdzian Risc-V (implementacja w laboratorium) | 3pkt
Projekt Risc-V (realizowany w domu) | 6pkt
Sprawdzian Intel-x86 (implementacja w laboratorium) | 3pkt
Projekt Intel-x86 (realizowany w domu) | 6 + 2pkt (wersja 32b + 64b)

Kolokwia wykładowe odbywają się w czasie zajęć laboratoryjnych, ale nie są oceniane w ramach nich.

## Harmonogram ćwiczeń laboratoryjnych
1. Wprowadzenie do architektury Risc-V ([RiscvUppercase.asm](../resources/RiscVUppercase.asm)) + rozdanie tematów projektów,
2. Sprawdzian z architektury Risc-V (implementacja w laboratorium, druga godzina) + teoria Risc-V (pierwsza godzina)
3. Kolokwium wykładowe 1,
4. Wprowadzenie do architektury Intel x86, (pierwsza godzina, [kod](../resources/x86)) + oddanie projektów [**Risc-V**](RiscVTopics.md) (druga godzina),
5. Sprawdzian z architektury Intel x86 (implementacja w laboratorium),
6. Oddanie projektów [**Intel-x86**](IntelTopics.md),
7. Kolokwium wykładowe 2.

Projekty można konsultować w czasie wszystkich zajęć laboratoryjnych. Terminy oddania są nieprzekraczalne.

n | Ćwiczenie                   | Grupa 102         | Grupa 103         | Grupa 107         | Grupa 108
-|-|-|-|-|-
1 | Risc-V - wprowadzenie       | 24.03 16:15 (2h)  | 24.03 18:15 (2h)  | 17.03 16:15 (2h)  | 17.03 18:15 (2h)
2 | Risc-V - sprawdzian         | 21.04 16:15 (2h)  | 21.04 18:15 (2h)  | 31.03 16:15 (2h)  | 31.03 18:15 (2h)
3 | Kolokwium 1                 | 14.04 17:15 (1h)  | 14.04 19:15 (1h)  | 14.04 16:15 (1h)  | 14.04 18:15 (1h)  
4 | Intel-x86 - wprowadzenie    | 5.05 16:15 (2h)   | 5.05 18:15 (2h)   | 28.04 16:15 (2h)  | 28.04 18:15 (2h)
5 | Intel-x86 - sprawdzian      | 26.05 16:15 (2h)  | 26.05 18:15 (2h)  | 19.05 16:15 (2h)  | 19.05 18:15 (2h)
6 | Intel-x86 - termin oddania  | 16.06 16:15 (2h)  | 16.06 18:15 (2h)  | 2.06 16:15 (2h)   | 2.06 18:15 (2h)
7 | Kolokwium 2                 | 9.06 17:15 (1h)   | 9.06 19:15 (1h)   | 9.06 16:15 (1h)   | 9.06 18:15 (1h)

## Sprawdziany - Risc-V, Intel x86
Zadania na sprawdzianach polegają na implementacji programów przetwarzających łańcuchy znakowe wprowadzane przez użytkownika (podobnie jak przykłady przedstawione na zajęciach wprowadzających z obu architektur). Poziom skomplikowania może być większy - może być konieczna implementacja np. zagnieżdżonej pętli. Przykładowe zadanie do przećwiczenia w domu:
  - sortowanie znaków w łańcuchu znakowym (wg wartości kodów ASCII),
  - usuwanie cyfr z łańcucha znakowego (bez użycia bufora pomocniczego).

Dodatkowe informacje:
- oba sprawdziany są realizowane z użyciem tych samych środowisk co na zajęciach wprowadzających (RARS dla Risc-V, Makefile dla Intel x86),
- można korzystać z dokumentacji, notatek, kodu napisanego wcześniej oraz innych materiałów, 
- połowa punktów przydzielana jest za poprawne rozwiązanie problemu, a połowa za jakość tego rozwiązania, 
- niedziałające rozwiązanie nie jest oceniane,
- sprawdziany muszą być rozwiązywane osobiście i samodzielnie, 
- zaliczenie sprawdzianu może wymagać obrony przedstawionego rozwiązania.
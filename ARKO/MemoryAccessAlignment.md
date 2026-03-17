# Wyrównanie dostępów do pamięci
## Zasada
Dostępy do pamięci w systemie komputerowym podlegają zasadzie ich wyrównania. Wynika to z kilku [czynników](https://stackoverflow.com/questions/381244/purpose-of-memory-alignment). Zasada stanowi, że:

```
Adres operandu musi być podzielny przez jego wielkość.
```

## Wyjaśnienie
Zasada ta odnosi sie do instrukcji *load* i *store*. W architekturze Risc-V istnieje kilka takich instrukcji. Róznią się one wielkością operandu na którym operują i w związku z tym, wymagaja adresu spełniającego poniższe warunki:
Load | Store | Wielkośc transferu | Adres (*a7*)
-|-|-|-
*ld t0, 0(a7)* | *sd zero, 0(a7)* | 8B | a7 % 8 == 0
*lw t0, 0(a7)* | *sw zero, 0(a7)* | 4B | a7 % 4 == 0
*lh t0, 0(a7)* | *sh zero, 0(a7)* | 2B | a7 % 2 == 0
*lb t0, 0(a7)* | *sb zero, 0(a7)* | 1B | a7 % 1 == 0

Należy zwrócić uwagę, że:
- instrukcje **ld** i **sd** są dostępne jedynie w architekturze 64b,
- dostępy z użyciem instrukcji **lb** i **sb** są zawsze wyrównane

Przykładowo, dla instrukcji _lw_ (load word), operującej na słowie o wielkości 4B, adres ładowanego słowa musi być podzielny przez 4 (postaci _4N_). Nie może być postaci _4N+1_, _4N+2_ i _4N+3_.

Za przestrzeganie tej reguły odpowiedzialny jest programista. W przeciwnym wypadku, przy próbie dostępu do niewyrównanego adresu, procesor zgłosi wyjątek, a w konsekwencji program zostanie zatrzymany (crash w przypadku Risc-V, lub ARM). Nastąpi to w trakcie działania programu - nie przy kompilacji i niekoniecznie przy starcie. W praktyce, efekt zależy od architektury procesora, na której program jest wykonywany. Niektóre architektury (np. x86) pozwalają na niewyrównane dostępy, jednak ze względu na potencjalne problemy związane z wydajnością i przenośnością, rekomandowane jest używanie wyłącznie wyrównanych adresów. 

Aby zapewnic odpowiednie wyrównanie, bufory (m.in. tablice) powinny zawsze być alokowane pod odpowiednim adresem początkowym. W języku C++ można to osiągnąć używając specyfikatora *alignas()*, a w asemblerze makra *.align* (lub innego, odpowiedniego dla danego asemblera).

## Implikacja dla języków wysokiego poziomu
### Przykład **niepoprawny**...
Rozważmy nastepujący przykład w języku C/C++. Poniższy kod ma dostęp do bufora o wielkości 8B i jego zawartość interpretuje jako pojedyncze bajty typu **char** lub całe słowa typu **int**:

```
char buffer[8]; // size of 8B

void f(void) {
    char *pChar = (char*) (&buffer[0]);
    char *pInt = (int*) (&buffer[0]);

    *(pChar + 0) = 'a';
    *(pChar + 1) = 'b';
    *(pChar + 2) = 'c';
    *(pChar + 3) = 'd';

    *(pInt + 1) // address equivalent to *(pChar + 4)
        = 123456789;

    // ... e.g. send it all via network
}
```

Sytuacja nie jest oczywista. Z punktu widzenia języka (składnia, semantyka) kod jest w pełni legalny. 

Problem objawi się w trakcie wynonania linii, w której następuje przypisanie wartości typu int - **\*(pInt + 1)** = ... - ale nie jest to linia, która faktycznie go stanowi. W zależności od decyzji kompilatora, bufor może zostać zaalokowany pod adresem wyrównanym do 4B, lub nie. Dla bufora zdefiniowanego jako zmienna globalna, nastąpi to w momencie kompilacji. Gdyby był to bufor dynamicznie alokowany, decyzja zapadałaby w trakcie działania. Kompilator i środowisko będą optymalizować działanie, gdyż bufor jest tablicą zmiennych typu _char_ (który nie wymaga żadnego konkretnego wyrównania). Program może się zachowywać różnie (działać/nie działać) - per kompilacja, lub per uruchomienie. 

### ...poprawka
Rozwiązanie tego problemu jest trywialne. Bufor należy zaimplementować dla typu "najbardziej restrykcyjnego":

```
int buffer[2]; // also size of 8B

...
```

Now it can be accessed as both desired types. It occupies the same amount of memory, but its alignment is deterministic (nor the compiler, not the allocator can place it at an unaligned address now).
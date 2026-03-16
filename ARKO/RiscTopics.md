## Tematy projektów Risc-V

[Zapisy](https://wutwaw-my.sharepoint.com/:x:/g/personal/slawomir_niespodziany_pw_edu_pl/IQAF1JnNcW0aQ7U-E9sMbL9KATJECgqMEiuZnlDjacgHWbs?e=FgEcWe)

1. Rozciągnięcie histogramu + wyrównanie histogramu obrazu. Wyniki w !osobnych! plikach BMP. Porównanie histogramów.
2. Powiększenie obrazu metodą interpolacji dwuliniowej. 
3. Odbicie lustrzane obrazu binarnego (obraz wejściowy w formacie BMP z 1 bit/pixel, obsługa dolwolnej szerokośći obrazu, optymalizacja).
4. Filtracja obrazu przy pomocy filtru Roberts\`a ([Krzyż Roberts`a](https://pl.wikipedia.org/wiki/Krzy%C5%BC_Robertsa)).
5. Filtracja obrazu przy pomocy filtru Prewitt`a. 
6. Filtracja medianowa obrazu przy pomocy maski 5x5. Optymalizacja wydajności.
7. Progowanie obrazu metodą Otsu. Obraz wczytany w formacie BMP/RGB, przekonwertowany na skalę szarości.
8. Progowanie adaptacyjne obrazu ([Mean Adaptive Threshold](https://homepages.inf.ed.ac.uk/rbf/HIPR2/adpthrsh.htm)). Obraz wejściowy w odcieniach szarości.
9. Algorytm redukcji palety kolorów Floyda-Steinberga. Obraz wejściowy w formacie BMP !BEZ! palety kolorów.
10. Algorytm rysowania prostej Xiaolin Wu.
11. Fraktal Newton`a f(z) = z^3 - 1 (+translacja/przesunięcie, rysowanie na BMP o dowolnym rozmiarze, wyświetlany fragment płaszczyzny zespolonej proporcjonalny do wielkości obrazu).
12. Fraktal Newton`a f(z) = z^5 - 1 (+zoom, rysowanie na BMP o dowolnym rozmiarze, środek obrazu w z=0, wyświetlany fragment płaszczyzny zespolonej proporcjonalny do wielkości obrazu).
13. Rysowanie trójpunktowej krzywej Beziera na obrazie BMP.
14. Cieniowanie trójkąta, wynik w BMP (parametry zadane w konsoli: współrzędne trzech wierzchołków i ich kolory). 
15. Wyliczanie sinus i cosinus zadanego kąta algorytmem CORDIC. 
16. Rzutowanie ortogonalne dwóch trójkątów (z-buffer) - wierzchołki trójkątów wczytane z konsoli, wynik w BMP. 

## Wymagania do projektów Risc-V
- Dla tematów związanych z przetwarzneim obrazów, zapisanych w pliku [BMP](https://en.wikipedia.org/wiki/BMP_file_format) - plik z obrazem istnieje na dysku, program ma go otworzyć i przeprowadzić odpowiednie operacje. Plik zawiera dane wejściowe i/lub jest buforem na wynik (chyba, że w poleceniu napisano inaczej),
- Szerokość obrazu jest dowolna (w szczególności niepodzielna przez 4 - obsługa "padding`u") - ustalana przez prowadzącego w momencie oddawania projektu. Można przyjąć sensowną wartość maksymalną,
- Pamięć na bitmapę należy zaalokować dynamicznie - w następujących krokach:
  - do statycznie zdefiniowanego obszaru pamięci wczytać nagłówek pliku BMP,
	- odczytać wysokość i szerokość bitmapy,
	- dynamicznie zaalokować (wywołanie systemowe sbrk) pamięć na tablicę pikseli,
	- wczytać tablicę pikseli do dynamicznie zaalokowanego obszaru pamięci,
- W zależności od wybranego tematu, należy wczytać parametry od użytkownika (np. z konsoli),
- Obowiązuje zakaz używania typów i operacji zmiennoprzecinkowych (float/double/..),
- Do obliczeń na ułamkach należy używać operacji stałoprzecinkowych (fixed-point). Format należy dobrać w sposób optymalny, adekwatnie do rozwiazywanego problemu. Obowiązuje zakaz wykonywania obliczeń ułamkowych w potędze liczby 10 (np. w dziedzinie 1/10000),
- Działania operujące na wartościach związanych z potegami liczby 2 należy implementować z użyciem operacji bitowych:
  - Mnożenie: M * (2^N) => M << N,
  - Dzielenie: M / (2^N) => M >> N,
  - Modulo: M % (2^N) => M & (2^N - 1) - lub maska bitowa z N-jedynkami, e.g. 7 % 4 = 7 % 2^2 = 7 & (2^2 - 1) = 7 & 0x03 = 0b0111 & 0b0011 = 0b0011
- Należy zaplanować i zademonstrować poprawność działania zaimplementowanego algorytmu. Włącznie z przypadkami brzegowymi. Założenia projektowe mogą ograniczać stopień skomplikowania projektu, ale muszą być przyjęte świadomie (ze zrozumieniem konsekwencji pozytywnych/negatywnych),
- Należy podjąć rozsądne decyzje projektowe dotyczące szczegółów nie wynikających wprost z polecenia,
- Kod powiniem być sformatowany wg nastpującej reguły: etykiety - bez wcięcia, kod - jedno wcięcie,
- Należy minimalizować ilość wywołań systemowych - wczytywać/zapisywać cały wiersz pikseli z/do pliku, zamiast każdego piksela osobno, lub cały obraz, zamiast każdego wiersza osobno, etc,
- Należy optymalizować czas wykonania poprzez realizację obliczeń w pamięci (np. przetwarzanie całego obrazu zawartego w pamięci, a nie wczytywanie go linia po linii z dysku),
- Należy minimalizować ilość dostępów do pamięci poprzez sięganie po wiele bajtów jednocześnie - używać instrukcji lw/sw, zamiast lb/sb. Należy pamiętać o wyrównaniu dostępów do pamięci.
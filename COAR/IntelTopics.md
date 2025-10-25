<!-- ## Tematy projektów Intel x86:

1. Z-buffer - rysowanie przecinających się trójkątów, trzy trójkąty, translacja wierzchołków w 3D.
2. Skalowanie obrazu metodą interpolacji dwuliniowej. 
3. Przekształcenie afiniczne na obrazie 2D w czasie rzeczywistym (pochylenie + powiększenie + translacja).
4. Filtr konwolucyjny, w zależności od odległości od wybranego punktu obrazka:
```
        |  0 -1  0 |   |  1  2  1 |
maska = | -1  5 -1 | + |  2 -4  2 | * w, gdzie w = min(1, r / (min(width, height) / 2))
        |  0 -1  0 |   |  1  2  1 | 
```
5. Filtracja obrazu przy pomocy filtru Prewitt`a. Płynnie modyfikowalny kierunek filtracji. 
6. Obroty sceny 3D złożonej z punktów i łączących je linii (bez powierzchni). Rzutowanie perspektywiczne, szkielet czworościanu. 
7. Alpha-blending pomiędzy dwoma obrazami, wg wzoru sinus, wokół punktu wybieranego interaktywnie.
8. Efekt Swirl na wczytanym obrazku. Interaktywnie modyfikowalne parametry.
9. Rzutowanie ortogonalne czworościanu - rózne kolory ścian, obrót w minimum dwóch płaszczyznach, z-buffer.
10. Przekształcenie afiniczne na obrazie 2D w czasie rzeczywistym (obrót + translacja).
11. Fraktal Newton`a f(z) = z^3 - 1 z powiększeniem i translacją (implementacja na liczbach pojedynczej precyzji - float).
12. Fraktal Newton`a f(z) = z^5 - 1 z powiększeniem i translacją  (implementacja na liczbach podwójnej precyzji - double).
13. Rysowanie pięciopunktowej krzywej Beziera.
14. Cieniowanie trójkąta z translacją jego wierzchołków. 
15. Krzywe Lissajous. 
16. Rzutowanie perspektywiczne szkieletu czworościanu - krawędzie o różnych kolorach + obrót w mininimum dwóch płaszczyznach. 

### Assignment
The assigned topic number is the same as for the Risc-V project.

## Projekt Intel-x86
Wymagania dotyczące implementacji projektu Intel-x86 (ich nieprzestrzeganie skutkuje obniżeniem oceny):
- Projekt powinien być programem hybrydowym - część napisana w języku C/C++, a część w asemblerze,
- Kod C/C++ jest niezbędny do uzyskania pozytywnej oceny i musi działać, ale jego jakość nie jest oceniana,

Część C/C++:
- Program powinien być interaktywny - w trakcie działania programu użytkownik powinien mieć możliwość zmiany parametrów działania algorytmu (bez wyłączania programu, np. użycie myszki - do przybliżenia/oddalania - lub klawiszy na klawiaturze) i obserwacji wyniku działania,
- Program powinien korzystać z dowolnej biblioteki graficznej (Allegro, OpenGL etc.) do obsługi interakcji z użytkownikiem (klawiatura/mysz), wczytywania (jeżeli konieczne) i wyświetlania grafiki, zapisywanie wyniku w pliku nie jest konieczne,
- Projekt NIE musi operować na plikach BMP, rekomendowane jest użycie typów do obsługi grafiki zapewnianych przez wybraną bibliotekę graficzną,
- Alokacja zasobów powinna odbyć się na poziomie C/C++ - do funkcji asemblerowej powinny być przekazywane dane wejściowe oraz już zaalokowane bufory na dane wyjściowe,
- Przykładowy prototyp funkcji asemblerowej:

void f(int width, int height, char *pInputImg, char *pOutputImg, int algoSpecificParam0, float algoSpecificParam1, ...);

- Przykładowa implementacja części wysokopoziomowej w pseudokodzie:
 
````{verbatim}
allocateBuffers();
readDataFromFiles(); // if required
setParamsToDefaultValues();
while(true) {
	f(...); // call assembly function
	displayResult();
	readUserInput(); // this function shall block and wait for user interaction
	modifyParams(); // according to user input
}
````

Część Assembly:
- Część asemblerowa powinna być jedną funkcją,
- Pojedyncze wywołanie funkcji asemblerowej powinno realizować kompletny wynik działania algorytmu (np. renderować cały obraz, a nie pojedyncze piksele/wiersze), 
- Kod asemblerowy powinien używać liczb zmiennoprzecinkowych (float lub double),
- Można (nie trzeba) korzystać z jednostek wektorowych,
- Implementacja wersji 64b jest oceniana w skali do 8p (implementacja wersji 32b nie jest konieczna), -->

TBD
# SOI - Ogólne

## Regulamin laboratoriów
- Poniższe punkty są dodatkowymi w stosunku do ogólnych zasad obowiązujących na przedmiocie,
- Zadania są realizowane na sprzęcie i w środowisku wybranym przez studenta,
- Wymagane jest stosowanie dobrych praktyk programistycznych (m.in. formatowanie kodu) - laboratorium nie dotyczy programowania w języku C, 
- Realizowane zadania nie musza być wysyłane (chyba, że na indywidualne polecenie prowadzącego),
- Implementacje, które nie działają, nie są oceniane,
- Zadania nie są oceniane po terminie - terminem jest ostatnie laboratorium dla danego zadania (można oddawać wcześniej),
- Zadania muszą być realizowane osobiście i samodzielnie,
- Próba oddania zadania zrealizowanego niesamodzielnie (m.in. przy pomocy AI) skutkuje wyzerowaniem wszystkich laboratoriów,
- Ocena uzyskana za każde zadanie zależy od jego implementacji oraz **obrony** (na żywo),
- Podczas obrony należy być przygotowanym do odpowiedzi na pytania na temat przedstawianego rozwiązania (jego projektu/architektury oraz implementacji) bez patrzenia w kod.

## Zadania
### Wywołanie systemowe
Zaimplementuj wywołanie systemowe, które dla poddrzewa procesu o zadanym _pid_, zwróci jego szerokość (**największą** szerokość po wszystkich poziomach).
 
Częściami zadania są m.in.:
- Implementacja prostego programu w języku C, który użyje zaimplementowanego wywołania dla wybranego przez użytkownika procesu i wydrukuje na ekranie zwrócony wynik,
- Przygotowanie co najmniej dwóch nietrywialnych przypadków użycia, dla zademonstrowania poprawności działania wywołania.

### Szeregowanie procesów
Zmodyfikuj algorytm szeregowania w systemie minix, w taki sposób aby obsługiwał trzy klasy procesów - obliczeniowe (wsadowe), interaktywne oraz realizujące operacje masywnego wejścia/wyjścia. Dla każdej klasy procesu zdefiniuj odpowiednie wymagania, a następnie je zaimplementuj. Zaplanuj adekwatny sposób symulacji procesu kazdej klasy. Zaimplementuj możliwość ustawienia (zmiany domyślmnej) klasy procesu. Zaplanuj, przygotuj i wykonaj testy. Uwzględnij przypadki złośliwe.

Warto pamiętać, że zarówno operacja _sleep()_ jak i _printf()_ powoduje przeniesienie procesu do kolejki procesów zablokowanych (a następnie jego powrót do kolejki gotowych). E.g. _printf()_ analogicznie jak _scanf()_ obsługuje interakcję z terminalem - a więc dopóki ta interakcja nie jest zakończona, proces nie może kontynuować. Dla _scanf()_ jest to oczywiste. Dla _printf()_ działa analogicznie, jedynie "szybciej", czyli też z chwilowym zablokowaniem.
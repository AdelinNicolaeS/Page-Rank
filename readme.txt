Functia SST- consta in rezolvarea unui sistem superior triunghiular Ax=b, pentru
care matricea A a fost scrisa sub forma A=QR. Aflarea solutiilor se realizeaza
incepand cu ultimul element al vectorului coloana al rezultatului.
Functia PR_Inv- foloseste algoritmul Gram-Schmidt optimizat pentru obtinerea
unei matrice ortogonale Q si a unei matrice superior triunghiulara R astfel incat
A=QR. Folosind aceasta forma si functia SST, functia calculeaza fiecare coloana
a matricei inverse a matricei A data ca parametru, returnand in final chiar inversa.
Functia Iterative- preia algoritmul descris in pseudocod din tema, initializand
vectorul rezultat cu 1/N, dupa care calculeaza matricea de adiacenta A a grafului,
eliminand cazurile cand o pagina web are o legatura catre ea insasi. Pentru
calcularea lui K, se ia al doilea numar de pe fiecare linie a listei de adiacenta
si se scad situatiile cand pagina are legatura catre sine. Se calculeaza
matricea M folosind functia PR_Inv de calculare a inversei, dupa care se recalculeaza
R pana cand diferenta ultimelor 2 valori obtinute se incadreaza in eroarea acceptata.
Se returneaza penultima valoare R.
Functia Algebraic- repeta algoritmul de la functia Iterative pentru calcularea
valorilor auxiliare (A, K, M), insa valoarea R se calculeaza prin trecerea la limita
a formulei din functia Iterative si rescrierea acesteia intr-o forma convenabila. Se
obtine astfel o aproximare a vectorului coloana cautat.
Functia Apartenenta- calculeaza valoarea in punctul x a functiei membru. Calcularea
parametrilor a si b se realizeaza prin punerea conditiei de continuitate functiei in
punctele val1 si val2 si rezolvarea unui sistem de 2 ecuatii cu 2 necunoscute. Cei doi
parametri depind astfel direct de val1 si val2. Dupa apartenenta la una dintre cele 3
ramuri, se inlocuieste x si se obtine valoarea functiei in punctul dat ca parametru.
Functia PageRank- obtin in R1 si R2 vectorii coloana rezultat ai functiilor Iterative
si Algebraic, dupa care citesc tot fisierul de intrare intr-o variabila si selectez din
acesta N, val1 si val2. Afisez conform cerintei N, R1 si R2, dupa care folosesc functia
buit-in sort pentru sortarea descrescatoare a R2. La final, pe fiecare linie scriu
indicele i din vectorul sortat, alaturi de nodul j din R2 al carui PageRank corespunde
pozitiei i din vectorul sortat si valoarea functiei u in punctul i din vectorul sortat.
     
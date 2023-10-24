rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzyœ).
rodzic(krzyœ, miko³aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
mê¿czyzna(andrzej).
mê¿czyzna(marcin).
mê¿czyzna(krzyœ).
mê¿czyzna(miko³aj).
potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).

szczêœliwy(X) :-
    rodzic(X, _).

dwoje_dzieci(X) :-
    rodzic(X, Dziecko1),
    rodzic(X, Dziecko2),
    siostra(Dziecko1, Dziecko2),
    Dziecko1 \= Dziecko2.

wnuk(Wnuk, Dziadkowie) :-
    rodzic(Dziadkowie, Rodzic),
    rodzic(Rodzic, Wnuk).

ciotka(X, Y) :-
    siostra(X, Rodzic),
    rodzic(Rodzic, Y).

nastêpca(X, Y) :-
    potomek(X, Y),
    X \= Y.

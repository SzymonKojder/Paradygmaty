% Fakty
kobieta(maria).
kobieta(anna).
mezczyzna(jan).
mezczyzna(piotr).

rodzic(maria, anna).
rodzic(jan, anna).
rodzic(jan, piotr).

% Reguły
matka(X, Y) :- kobieta(X), rodzic(X, Y).
ojciec(X, Y) :- mezczyzna(X), rodzic(X, Y).
dziadkowie(X, Z) :- rodzic(X, Y), rodzic(Y, Z).

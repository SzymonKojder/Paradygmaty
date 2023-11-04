% Fakty
osoba(anna, null, null, kobieta, 45).
osoba(jan, null, null, mezczyzna, 50).
osoba(maria, null, null, kobieta, 70).
osoba(piotr, null, null, mezczyzna, 75).
osoba(zofia, anna, jan, kobieta, 25).
osoba(tomek, maria, piotr, mezczyzna, 30).
osoba(kasia, maria, piotr, kobieta, 28).

% Reguły
rodzenstwo(X, Y) :- osoba(X, MatkaX, OjciecX, _, _), osoba(Y, MatkaY, OjciecY, _, _), MatkaX = MatkaY, OjciecX = OjciecY, X \= Y.
siostra(X, Y) :- rodzenstwo(X, Y), kobieta(X).
brat(X, Y) :- rodzenstwo(X, Y), mezczyzna(X).

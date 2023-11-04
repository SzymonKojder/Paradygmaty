% Fakty
osoba(anna, 25, kobieta).
osoba(jan, 30, mezczyzna).
osoba(maria, 50, kobieta).
osoba(piotr, 35, mezczyzna).

ulubiona_aktywnosc(anna, czytanie).
ulubiona_aktywnosc(jan, sport).
ulubiona_aktywnosc(maria, gotowanie).
ulubiona_aktywnosc(piotr, podróże).

% Reguła porównująca wiek
mlodsza(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX < WiekY.

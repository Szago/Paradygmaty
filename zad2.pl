zatrudnienie(anna, nowak, zelmer, duza_firma, 2000).
zatrudnienie(jan, kowalski, abc_inc, mala_firma, 2800).
zatrudnienie(maria, kowalczyk, xyz_corp, srednia_firma, 2300).
zatrudnienie(piotr, jankowski, quicktech, duza_firma, 2600).

zadowolona_z_pracy(X) :-
    zatrudnienie(X, _, _, mala_firma, Zarobki),
    Zarobki > 2500.

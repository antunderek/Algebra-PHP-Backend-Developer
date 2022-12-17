use zaposlenici;

-- Sve o zaposlenicima --
SELECT 
	zaposlenici.id_zaposlenik AS 'ID', 
	zaposlenici.ime AS 'Ime', 
	zaposlenici.prezime AS 'Prezime', 
	odjeli.odjel AS 'Odjel', 
	pozicije.pozicija AS 'Pozicija', 
	place.placa AS 'Placa' 
FROM zaposlenici_odjeli_pozicije AS zapodpoz
JOIN zaposlenici ON zapodpoz.id_zaposlenik = zaposlenici.id_zaposlenik
JOIN odjeli ON zapodpoz.id_odjel = odjeli.id_odjel
JOIN pozicije ON zapodpoz.id_pozicija = pozicije.id_pozicija
JOIN place ON zaposlenici.placa = place.id_placa;


-- Dohvatite sve zaposlenike i njihove place --
SELECT 
	zaposlenici.id_zaposlenik AS 'ID',
	zaposlenici.ime AS 'Ime', 
	zaposlenici.prezime AS 'Prezime', 
	place.placa AS 'Placa'
FROM zaposlenici
JOIN place ON zaposlenici.placa = place.id_placa;


-- Dohvatite sve voditelje odjela i izracunajte prosjek njihovih placa --
SELECT 
	zaposlenici.id_zaposlenik AS 'ID', 
	CONCAT(zaposlenici.ime, ' ', zaposlenici.prezime) AS 'Voditelji odjela', 
	odjeli.odjel AS 'Odjel', 
	place.placa AS 'Placa'
FROM zaposlenici_odjeli_pozicije AS zapodpoz
JOIN zaposlenici ON zapodpoz.id_zaposlenik = zaposlenici.id_zaposlenik
JOIN odjeli ON zapodpoz.id_odjel = odjeli.id_odjel
JOIN pozicije ON zapodpoz.id_pozicija = pozicije.id_pozicija
JOIN place ON zaposlenici.placa = place.id_placa
WHERE zapodpoz.id_pozicija = 3;


SELECT 
	ROUND(AVG(place.placa), 2) AS 'Prosjecna placa voditelja odjela' 
FROM zaposlenici_odjeli_pozicije AS zapodpoz 
JOIN zaposlenici ON zapodpoz.id_zaposlenik = zaposlenici.id_zaposlenik
JOIN odjeli ON zapodpoz.id_odjel = odjeli.id_odjel
JOIN place ON zaposlenici.placa = place.id_placa
WHERE zapodpoz.id_pozicija = 3;


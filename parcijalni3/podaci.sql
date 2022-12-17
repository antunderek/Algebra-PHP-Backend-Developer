use zaposlenici;

INSERT INTO
    place(placa)
VALUES
    (4000),
    (5000),
    (6000),
    (8000),
    (10000);
    
    
INSERT INTO
    zaposlenici(ime, prezime, placa)
VALUES
    ('Ivo', 'Ivic', 1),
    ('Kata', 'Katic', 2),
    ('Mato', 'Matic', 3),
    ('Ana', 'Anic', 4),
    ('Bob', 'Bobbinsky', 5);
    

INSERT INTO 
    odjeli(odjel)
VALUES
    ('Marketing'),
    ('Dizajn'),
    ('Backend');
    

INSERT INTO
    pozicije(pozicija)
VALUES
    ('Praktikant'),
    ('Privremeni radnik'),
    ('Voditelj');


INSERT INTO 
    zaposlenici_odjeli_pozicije(id_zaposlenik, id_odjel, id_pozicija)
VALUES
    (1, 1, 1),
    (2, 1, 3),
    (3, 2, 2),
    (4, 2, 3),
    (5, 3, 3);
    

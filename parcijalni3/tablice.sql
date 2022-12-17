CREATE DATABASE zaposlenici;

use zaposlenici;

CREATE TABLE place (
    id_placa INT AUTO_INCREMENT,
    placa INT,
    CONSTRAINT pk_placa PRIMARY KEY (id_placa)
);


CREATE TABLE zaposlenici (
    id_zaposlenik INT AUTO_INCREMENT,
    ime NVARCHAR(30) NOT NULL,
    prezime NVARCHAR(30) NOT NULL,
    placa INT,
    CONSTRAINT pk_zaposlenik PRIMARY KEY (id_zaposlenik),
    CONSTRAINT fk_placa FOREIGN KEY (placa) REFERENCES place(id_placa)
);


CREATE TABLE odjeli (
    id_odjel INT AUTO_INCREMENT,
    odjel NVARCHAR(50),
    CONSTRAINT pk_odjel PRIMARY KEY (id_odjel)
);


CREATE TABLE pozicije (
    id_pozicija INT AUTO_INCREMENT,
    pozicija NVARCHAR(50),
    CONSTRAINT pk_pozicija PRIMARY KEY (id_pozicija)
);


CREATE TABLE zaposlenici_odjeli_pozicije (
    id_zaposlenik INT,
    id_odjel INT,
    id_pozicija INT,
    CONSTRAINT fk_zaposlenik FOREIGN KEY (id_zaposlenik) REFERENCES zaposlenici(id_zaposlenik),
    CONSTRAINT fk_odjel FOREIGN KEY (id_odjel) REFERENCES odjeli(id_odjel),
    CONSTRAINT fk_pozicija FOREIGN KEY (id_pozicija) REFERENCES pozicije(id_pozicija)
);

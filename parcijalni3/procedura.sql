use zaposlenici;

-- Procedura prosjecna placa svih zposlenika --
DELIMITER //

CREATE PROCEDURE ProsjecnaPlacaZaposlenika()
BEGIN
    SELECT ROUND(AVG(place.placa), 2) AS 'Prosjecna placa' 
    FROM zaposlenici
    JOIN place ON zaposlenici.placa = place.id_placa;
END //

DELIMITER ;


-- Poziv procedure --
CALL ProsjecnaPlacaZaposlenika;

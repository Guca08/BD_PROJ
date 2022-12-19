CREATE TRIGGER InsertCapMin
BEFORE INSERT ON Estadio
FOR EACH ROW
WHEN (SELECT capacidade FROM Estadio, Equipa WHERE Estadio.nomeEquipa = new.nomeEquipa) < 3000
BEGIN
    DELETE FROM Estadio WHERE nomeEstadio = new.nomeEquipa;
    SELECT RAISE (ROLLBACK, 'Capacidade minima nao alcancada.');
END;



CREATE TRIGGER UpdateCapMin
BEFORE UPDATE ON Estadio
FOR EACH ROW
WHEN (SELECT capacidade FROM Estadio, Equipa WHERE Estadio.nomeEquipa = new.nomeEquipa) < 3000
BEGIN
    SELECT RAISE(ROLLBACK, 'Capacidade minima nao alcancada.');
END;
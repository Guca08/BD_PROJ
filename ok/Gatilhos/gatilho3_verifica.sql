INSERT INTO Estadio VALUES('Estadio de Pinamanique', 'Lisboa', 4000, 'Casa Pia AC');
INSERT INTO Equipa VALUES ('Casa Pia AC', 1920, 'Victor Domingos Franco', 'Lisboa', 5);

INSERT INTO Estadio VALUES('Estadio D.Joao V', 'Braga', 2000, 'FC Vizela');
INSERT INTO Equipa VALUES ('FC Vizela', 1939, 'Diogo Godinho', 'Braga', 13);



--INSERT INTO Estadio VALUES('Estadio do Olival', 'Porto', 3000, 'FC Porto');


SELECT nomeEstadio, localidade, capacidade, nomeEquipa FROM Estadio, Equipa where Estadio.nomeEquipa=Equipa.nomeEquipa and Equipa.nomeEquipa='Estadio de Pinamanique';
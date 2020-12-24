-- Création dynamique de tables
--
CREATE table Softs AS SELECT nomLog, Version, prix FROM Logiciel;

SELECT * FROM Softs;


--
CREATE table PCSeuls
	AS SELECT nPoste, nomPoste, IndIP, ad, typePoste, nSalle
	FROM Poste
	WHERE typePoste <> 'PCNT' OR typePoste <> 'PCWS';

SELECT * FROM PCSeuls;
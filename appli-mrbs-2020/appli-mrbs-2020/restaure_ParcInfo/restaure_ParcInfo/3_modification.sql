-- Modif de donn�es

SELECT * FROM Segment;

UPDATE Segment
	SET etage=0 WHERE indIP = '130.120.80';
UPDATE Segment
	SET etage=1 WHERE indIP = '130.120.81';
UPDATE Segment
	SET etage=2 WHERE indIP = '130.120.82';
SELECT * FROM Segment;

SELECT nLog, typeLog, prix FROM Logiciel;
UPDATE Logiciel
	SET prix = prix*0.9 WHERE typeLog = 'PCNT';
SELECT nLog, typeLog, prix FROM Logiciel;








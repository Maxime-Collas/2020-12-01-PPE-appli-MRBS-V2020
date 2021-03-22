-- 

CREATE VIEW LogicielsUnix
  AS SELECT *
     FROM   Logiciel 
     WHERE  typeLog = 'UNIX';

DESCRIBE LogicielsUnix;

SELECT * FROM LogicielsUnix;

CREATE VIEW Poste0 (nPos0, nomPoste0, nSalle0, TypePoste0, indIP, ad0)
  AS SELECT nPoste, nomPoste, nSalle, typePoste, indIP, ad
     FROM   Poste 
     WHERE  indIP IN
	    (SELECT indIP 
	     FROM   Segment
	     WHERE  etage = 0);

DESCRIBE Poste0;

SELECT * FROM Poste0;

INSERT INTO Poste0 
       VALUES ('p15','Bidon15', 's01','UNIX','130.120.80','20');

INSERT INTO Poste0 
       VALUES ('p16', 'Bidon16','s21','UNIX','130.120.82','20');

-- les deux sont présents ....
SELECT * FROM Poste;

-- seul le poste p15 est présent ....
SELECT * FROM Poste0;

DELETE FROM Poste WHERE nPoste IN ('p15','p16');

SELECT * FROM Poste;

CREATE VIEW SallePrix (nSalle, nomSalle, nbPoste, prixLocation)
	AS SELECT nSalle, nomSalle, nbPoste, nbPoste*100
	FROM Salle;

SELECT * FROM SallePrix;

SELECT * FROM SallePrix
	WHERE prixLocation > 150;


-- ALTER TABLE Types DROP COLUMN tarif;

ALTER TABLE Types ADD tarif SMALLINT(4);

UPDATE Types SET tarif=50   WHERE typeLP ='TX';
UPDATE Types SET tarif=100  WHERE typeLP ='PCWS';
UPDATE Types SET tarif=120  WHERE typeLP ='PCNT';
UPDATE Types SET tarif=200  WHERE typeLP ='UNIX';
UPDATE Types SET tarif=80   WHERE typeLP ='NC';
UPDATE Types SET tarif=400  WHERE typeLP  ='BeOS';


SELECT * FROM Types;

--



DROP VIEW SalleIntermediaire;

CREATE VIEW SalleIntermediaire(nSalle, typePoste, nombre, tarif)
  AS SELECT p.nSalle, p.typePoste, COUNT(p.nPoste), t.tarif
     FROM   Poste p, Types t
     WHERE  p.typePoste = t.typeLP
     GROUP  BY p.nSalle, p.typePoste, t.tarif;

SELECT * FROM SalleIntermediaire;


DROP VIEW SallePrixTotal;

CREATE VIEW SallePrixTotal(nSalle, PrixReel)
  AS SELECT   nSalle, SUM(nombre*tarif) 
     FROM     SalleIntermediaire
     GROUP BY nSalle;

SELECT * FROM SallePrixTotal;

SELECT * FROM SallePrixTotal
	WHERE PrixReel = (SELECT MIN(PrixReel) FROM SallePrixTotal);


-- Avec contraintes

CREATE VIEW Poste0 (nPos0, nomPoste0, nSalle0, TypePoste0, indIP, ad0)
  AS SELECT nPoste, nomPoste, nSalle, typePoste, indIP, ad
     FROM   Poste 
     WHERE  indIP IN
	    (SELECT indIP 
	     FROM   Segment
	     WHERE  etage = 0)
  WITH CHECK OPTION;

-- ck option failed

SELECT * FROM Poste0;
INSERT INTO Poste0 VALUES
	('p16','Bidon15', 's21','UNIX','130.120.82','20');



DROP VIEW Installer0;

CREATE VIEW Installer0 (nPoste, nLog, num, dateIns)
  AS SELECT nPoste, nLog, numIns, dateIns FROM Installer
      WHERE nLog NOT IN 
	(SELECT nLog 
	 FROM   Logiciel
	 WHERE  typeLog = 'PCNT')
      AND nPoste IN
	(SELECT nPoste
	 FROM   Poste
	 WHERE  indIP IN 
		(SELECT indIP 
		 FROM   Segment
		 WHERE  etage=0 ))
  WITH CHECK OPTION ;

SELECT * FROM Installer0;

-- ck option failed
INSERT INTO Installer0 (nPoste,nLog,dateIns) 
	VALUES ('p11','log7',SYSDATE());

-- ck option failed
INSERT INTO Installer0 (nPoste,nLog,dateIns) 
	VALUES ('p1','log7',SYSDATE());

-- bonne installation

INSERT INTO Installer0 (nPoste,nLog,dateIns) 
	VALUES ('p6','log2',SYSDATE());

SELECT * FROM Installer0;
--

CREATE  VIEW SallePoste (nomSalle, nomPoste, adrIP, nomTypePoste)
  AS SELECT s.nomSalle, p.nomPoste, CONCAT(p.indIP,'.',p.ad), t.nomType
     FROM   Salle s, Poste p, Types t
     WHERE  s.nSalle    = p.nSalle
     AND    p.typePoste = t.typeLP;

SELECT * FROM SallePoste;




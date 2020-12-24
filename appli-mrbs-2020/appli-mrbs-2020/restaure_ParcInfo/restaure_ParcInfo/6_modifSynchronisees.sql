
INSERT INTO Installer (nPoste,nLog,dateIns,delai) VALUES ('p2','log6',SYSDATE(),NULL);

INSERT INTO Installer (nPoste,nLog,dateIns,delai) VALUES ('p8','log1',SYSDATE(),NULL);

INSERT INTO Installer (nPoste,nLog,dateIns,delai) VALUES ('p10','log1',SYSDATE(),NULL);

SELECT * FROM Installer;

UPDATE Segment seg  
 SET seg.nbSalle =
	(SELECT COUNT(*) 
	 FROM   Salle sal 
	 WHERE  seg.indIP = sal.indIP);

UPDATE Segment seg  
 SET seg.nbPoste =
	(SELECT COUNT(*) 
	 FROM   Poste pos
	 WHERE  seg.indIP = pos.indIP);

SELECT * FROM Segment;


UPDATE Logiciel l 
  SET l.nbInstall =
	(SELECT COUNT(*) 
	 FROM   Installer i 
	 WHERE  l.nLog = i.nLog);

SELECT * FROM Logiciel ;

UPDATE Poste p 
  SET p.nbLog = 
	(SELECT COUNT(*) 
	 FROM   Installer i 
	 WHERE  p.nPoste = i.nPoste);


SELECT * FROM Poste ;
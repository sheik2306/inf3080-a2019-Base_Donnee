 
INSERT INTO Position
Values('hello',4.5,4.5,
cPosition varchar(30) NOT NULL,
nLat NUMBER(8,5) NOT NULL,
nLong NUMBER(8,5) NOT NULL,
camion_id
INSERT INTO  TYPEEQUIPEMENT 
VALUES('Flatbed');  -- Initier une fois seulement

INSERT INTO TYPEEQUIPEMENT 
VALUES('Drybox');   -- Unique

INSERT INTO REMORQUE
(REMORQUE_ID ,CAPACITE ,LONGUEUR ,LARGEUR ,HAUTEUR ,CTYPEEQUIPEMENT  )
Values(seq_id_remorque.NEXTVAL,20,450,20,20,'Flatbed');

--INSERT INTO Camion
--(camion_id,cposition,remorque_id)
--Values(2,

INSERT INTO REMORQUE
Values(seq_id_remorque.NEXTVAL,250,20,20,20,'Drybox');

INSERT INTO Soumission
Values(CURRENT_DATE, 455);
--select /*insert*/ from REMORQUE;
--
--
--VALUES(capacite,
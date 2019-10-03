 
 
INSERT INTO  TYPEEQUIPEMENT 
VALUES('Flatbed');  -- Initier une fois seulement

INSERT INTO TYPEEQUIPEMENT 
VALUES('Drybox');   -- Unique

INSERT INTO REMORQUE
(REMORQUE_ID ,CAPACITE ,LONGUEUR ,LARGEUR ,HAUTEUR ,CTYPEEQUIPEMENT  )
Values(seq_id_remorque.NEXTVAL,20,450,20,20,'Flatbed');


INSERT INTO REMORQUE
Values(seq_id_remorque.NEXTVAL,250,20,20,20,'Drybox');
--select /*insert*/ from REMORQUE;
--
--
--VALUES(capacite,
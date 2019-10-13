INSERT INTO  TYPEEQUIPEMENT 
VALUES(0,'Flatbed',20.50);  -- Initier une fois seulement

INSERT INTO TYPEEQUIPEMENT 
VALUES(1,'Drybox',30.50);   -- Unique

INSERT INTO REMORQUE
(REMORQUE_ID ,CAPACITE ,LONGUEUR ,LARGEUR ,HAUTEUR , equipement_id  )
Values(1,20,450,20,20,0); -- doit etre Flatbed ou Drybox seulement

INSERT INTO REMORQUE
(REMORQUE_ID ,CAPACITE ,LONGUEUR ,LARGEUR ,HAUTEUR , equipement_id  )
Values(2,20,450,20,20,0); -- doit etre Flatbed ou Drybox seulement


INSERT INTO Camion
Values(1,0,1 ); 


INSERT INTO Camion
Values(2,0,2); 

INSERT INTO Camion
Values(3,0,2); 
--INSERT INTO Camion
--Values(seq_no_camion.nextval,seq_id_remorque.currval ); 

INSERT INTO Position
Values(seq_id_position.nextval,1,'uneRoute', 4.5,  4.5,0);

INSERT INTO Position
Values(seq_id_position.nextval,2,'uneRoute', 4.5,  4.5,0);


INSERT INTO Chargement
Values(SEQ_NO_CHARGEMENT.NEXTVAL,'uneRoute');


INSERT INTO Soumission
Values(SEQ_NO_SOUMISSION.NEXTVAL,SEQ_NO_CHARGEMENT.CURRVAL,CURRENT_DATE, 45.23);

INSERT INTO CLIENT
(noClient, noSoumission)
Values(SEQ_NO_CLIENT.NEXTVAL,SEQ_NO_SOUMISSION.CURRVAL);
--INSERT INTO Camion
--(camion_id,cposition,remorque_id)
--Values(2,



--select /*insert*/ from REMORQUE;
--
--
--VALUES(capacite,
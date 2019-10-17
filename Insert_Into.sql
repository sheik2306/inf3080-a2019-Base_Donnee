

---------------- COMPAGNIE -----------

INSERT INTO Compagnie
Values(1,'Transport Ti-guy','555-423-6789','25 Rue de Lorne, saint-sophie');





---------------- CLIENT -----------

INSERT INTO Client
Values(10,'VendeurLeger','514-654-6647','2244 boulevard pie-x Montreal');

INSERT INTO Client
Values(20,'VendeurTiRoger','514-546-2342','2454 boulevard lachine quebec');

INSERT INTO Client
Values(30,'VendeurMediocre','514-654-6233','23 boulevard alphonse Montreal');

INSERT INTO Client
Values(40,'VendeurExtreme','514-664-6667','144 rue Antoine Montreal');



---------------- TYPE EQUIPEMENT -----------


INSERT INTO  TYPEEQUIPEMENT 
VALUES(0,'Flatbed',20.50);  -- Initier une fois seulement

INSERT INTO TYPEEQUIPEMENT 
VALUES(1,'Drybox',30.50);   -- Unique






---------------- EQUIPEMENT -----------

INSERT INTO EQUIPEMENT 
Values(1,0,10,30,40,30); -- doit etre Flatbed ou  Drybox seulement

INSERT INTO EQUIPEMENT 
Values(2,0,25,300,45,60); -- doit etre Flatbed ou  Drybox seulement

INSERT INTO EQUIPEMENT 
Values(3,1,25,300,45,60); -- doit etre Flatbed ou  Drybox seulement

INSERT INTO EQUIPEMENT 
Values(4,1,45,750,450,604); -- doit etre Flatbed ou  Drybox seulement





---------------- TRACTEUR -----------
INSERT INTO Tracteur
Values(1,0); 

INSERT INTO Tracteur
Values(2,1); 

INSERT INTO Tracteur
Values(3,0); 

INSERT INTO Tracteur
Values(4,1); 



---------------- CAMION -----------
INSERT INTO Camion
Values(1,1,1,1);

INSERT INTO Camion
Values(2,1,2,2);

INSERT INTO Camion
Values(3,1,3,3);

INSERT INTO Camion
Values(4,1,4,4);






---------------- POSITION -----------
INSERT INTO Position 
Values(1,'Garage', 45.3666, -72.44455,1,1);

INSERT INTO Position 
Values(2,'Voyage', 65.3666, -82.44455,0,2);

INSERT INTO Position 
Values(3,'Garage2', 45.3666, -72.44455,1,3);

INSERT INTO Position 
Values(4,'Voyage2', 55.3666, -72.44455,0,4);


---------------- ROUTE -----------



INSERT INTO ROUTE
Values(1,'Montreal vers Quebec',65.3666,-75.444,64.3666,-77.444,200);

INSERT INTO ROUTE
Values(2,'Montreal vers Sherbrooke',65.3666,-75.444,64.3666,-77.444,300);

INSERT INTO ROUTE
Values(3,'Montreal vers Rimouski',65.3666,-75.444,64.3666,-77.444,400);

INSERT INTO ROUTE
Values(4,'Montreal vers Plattsburg',65.3666,-75.444,64.3666,-77.444,500);








---------------- CHARGEMENT -----------


INSERT INTO Chargement
Values(1,1,455,200,200,200,1);

INSERT INTO Chargement
Values(2,2,455,200,200,200,1);

INSERT INTO Chargement
Values(3,3,455,300,200,200,3);

INSERT INTO Chargement
Values(4,4,455,400,200,300,5);






---------------- SOUMISSION -----------
INSERT INTO Soumission 
Values(1,10,2,'18-10-19',2600.50,1.36,1);

INSERT INTO Soumission 
Values(2,10,2,'17-08-18',3600.50,1.34,1);

INSERT INTO Soumission 
Values(3,20,3,'05-05-19',4600.50,1.55,3);

INSERT INTO Soumission 
Values(4,30,4,'22-07-19',7600.50,1.24,3);

INSERT INTO Soumission 
Values(5,40,4,'17-12-18',2600.50,1.45,1);

INSERT INTO Soumission 
Values(6,40,1,'25-09-19',5600.50,2.01,3);










--select /*insert*/ from REMORQUE;
--
--
--VALUES(capacite,
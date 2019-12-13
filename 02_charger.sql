SET ECHO ON
SET SERVEROUTPUT ON

---------------- COMPAGNIE -----------

INSERT INTO Compagnie
Values(1,'Transport Ti-guy','555-423-6789','25 Rue de Lorne, saint-sophie',12450,80);




---------------- CLIENT -----------

INSERT INTO Client
Values(4,'ManufacturierSoulier','514-654-6647','445 Rue Lagace, VictoraiVille');

INSERT INTO Client
Values(10,'VendeurLeger','514-654-6647','2244 boulevard pie-x Montreal');

INSERT INTO Client
Values(20,'VendeurTiRoger','514-546-2342','2454 boulevard lachine quebec');

INSERT INTO Client
Values(30,'VendeurMediocre','514-654-6233','23 boulevard alphonse Montreal');

INSERT INTO Client
Values(40,'VendeurExtreme','514-664-6667','144 rue Antoine Montreal');



---------------- TYPE EQUIPEMENT -----------



INSERT INTO TYPEEQUIPEMENT 
VALUES(1,'Drybox',30.50);   -- Unique

INSERT INTO TYPEEQUIPEMENT 
VALUES(2,'Flatbed',40.50);   -- Unique








---------------- EQUIPEMENT -----------

INSERT INTO EQUIPEMENT 
Values(1,'52 pied',1,300,40,50,52);

INSERT INTO EQUIPEMENT 
Values(2,'48 pied',1,400,40,50,48);

INSERT INTO EQUIPEMENT 
Values(3,'60 pied',1,500,40,50,60);

INSERT INTO EQUIPEMENT 
Values(4,'40 pied',2,200,40,50,40);


---------------- CARBURANT -----------
INSERT INTO Carburant
Values(1,'Diesel',1.5);

INSERT INTO Carburant
Values(2,'Propane',1.4);

INSERT INTO Carburant
Values(3,'Gaz',1.75);

INSERT INTO Carburant
Values(4,'Normal',1.25);

INSERT INTO Carburant
Values(5,'Super',2.25);

---------------- TRACTEUR -----------
INSERT INTO Tracteur
Values(1,1,35,0); 

INSERT INTO Tracteur
Values(2,2,30,1); 

INSERT INTO Tracteur
Values(3,3,45,0); 

INSERT INTO Tracteur
Values(4,4,25,0); 

INSERT INTO Tracteur
Values(5,5,25,0); 




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
Values(1,'Montreal vers Quebec',65.7,-75.9,64.10,-77.13,22);

INSERT INTO ROUTE
Values(2,'Montreal vers Sherbrooke',25.3666,-35.444,44.3666,-77.444,30);

INSERT INTO ROUTE
Values(3,'Montreal vers Rimouski',15.3666,-25.444,44.3666,-77.444,45);

INSERT INTO ROUTE
Values(4,'Montreal vers Plattsburg',65.3666,-75.444,64.3666,-77.444,49);

INSERT INTO ROUTE
Values(5,'Quebec vers Montreal',67.3,-79.4,41.3,-78.2,30);

INSERT INTO ROUTE
Values(6,'Quebec vers Montreal',65.3,-75.4,44.3,-78.4,40);

INSERT INTO ROUTE
Values(7,'Quebec vers Ottawa',64.3,-85.4,44.3,-98.4,42);





---------------- CHARGEMENT -----------


INSERT INTO Chargement
Values(1,'Une boite',65.3666,-75.444,64.3666,-77.444,10,73,200,200,300,1);

INSERT INTO Chargement
Values(2,'Boite de livre',65.3,-75.4,44.3,-78.4,20,50,250,100,300,1);

INSERT INTO Chargement
Values(3,'Boite de tuque',65.3666,-75.444,64.3666,-77.444,20,33,200,200,300,1);

INSERT INTO Chargement
Values(4,'Boite de chapeau',65.3,-75.4,44.3,-78.4,30,33,100,200,300,1);

INSERT INTO Chargement
Values(5,'Boite de tasses',65.3,-75.4,44.3,-78.4,40,73,150,200,300,1);

INSERT INTO Chargement
Values(6,'Boite de tasses',65.3,-75.4,44.3,-78.4,40,73,150,200,300,1);



INSERT INTO Chargement
Values(8,'Boite de tasses',64.3,-85.4,44.3,-98.4,40,90,150,200,300,1);



---------------- SOUMISSION E -----------
INSERT INTO SoumissionE 
Values(10,2,'18-10-19');

INSERT INTO SoumissionE 
Values(20,4,'17-08-18');

INSERT INTO SoumissionE 
Values(21,3,'17-08-18');

INSERT INTO SoumissionE 
Values(22,8,'17-08-18');



INSERT INTO SoumissionE 
Values(30,3,'05-05-19');

INSERT INTO SoumissionE 
Values(40,4,'22-07-19');

INSERT INTO SoumissionE 
Values(44,5,'17-08-18');



---------------- SOUMISSION D -----------

INSERT INTO SoumissionD 
Values(1,10,4000.24,1);

INSERT INTO SoumissionD 
Values(2,20,5670.24,2);

INSERT INTO SoumissionD 
Values(3,30,3670.24,3);

INSERT INTO SoumissionD 
Values(4,40,7670.24,4);


INSERT INTO SoumissionD 
Values(9,40,66770.24,2);

INSERT INTO SoumissionD 
Values(12,40,66770.24,3);

INSERT INTO SoumissionD 
Values(13,21,46770.24,3);

INSERT INTO SoumissionD 
Values(14,22,46770.24,4);

INSERT INTO SoumissionD 
Values(15,44,46770.24,2);



--select /*insert*/ from REMORQUE;
--
--
--VALUES(capacite,
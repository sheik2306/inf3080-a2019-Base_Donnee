CREATE TABLE Route (
cRoute varchar(30) NOT NULL,
nLatOri NUMBER(8,5) NOT NULL,
nLongOri NUMBER (8,5) NOT NULL,
nLatDes NUMBER(8,5) NOT NULL,
nLongDes NUMBER (8,5) NOT NULL,
nDistance NUMBER(38) NOT NULL,
CONSTRAINT pk_cRoute PRIMARY KEY (cRoute)
);/

CREATE TABLE TypeEquipement (
cTypeEquipement varchar(30),
CONSTRAINT pk_cTypeEquipement PRIMARY KEY(cTypeEquipement)
);/


CREATE TABLE Remorque (
remorque_id number(3) NOT NULL,
capacite NUMBER(38) NOT NULL,
longueur NUMBER(38) NOT NULL,
largeur NUMBER(38) NOT NULL,
hauteur NUMBER(38) NOT NULL,
cTypeEquipement varchar(30),
CONSTRAINT pk_remorque_id PRIMARY KEY (remorque_id),
CONSTRAINT fk_cTypeEquipement FOREIGN KEY (cTypeEquipement) REFERENCES TypeEquipement(cTypeEquipement)
);/
 CREATE SEQUENCE seq_id_remorque
 minvalue 0
 increment by 1
 start with 0;


CREATE TABLE Position (
cPosition varchar(30) NOT NULL,
nLat NUMBER(8,5) NOT NULL,
nLong NUMBER(8,5) NOT NULL,
camion_id NUMBER(38) NOT NULL,
CONSTRAINT pk_cPosition PRIMARY KEY (cPosition)
                        --CONSTRAINT fk_camion_id FOREIGN KEY (camion_id) REFERENCES Camion(camion_id)
);/

CREATE TABLE Camion (
camion_id NUMBER (3) NOT NULL,
cPosition varchar(30) NOT NULL,
remorque_id NUMBER(38) NOT NULL,
CONSTRAINT pk_camion_id PRIMARY KEY (camion_id),
CONSTRAINT fk_cPosition FOREIGN KEY (cPosition) REFERENCES Position(cPosition),
CONSTRAINT fk_remorque_id FOREIGN KEY (remorque_id) REFERENCES Remorque(remorque_id)
);/

CREATE TABLE Transporteur (
nomTransporteur varchar(30) NOT NULL,
camion_id NUMBER (38) NOT NULL,

CONSTRAINT pk_nomTransporter PRIMARY KEY (nomTransporteur),
CONSTRAINT fk_camion_id FOREIGN KEY (camion_id) REFERENCES Camion(camion_id)
-- CONSTRIANT fk_noVoyage FOREIGN KEY (noVoyage) REFERENCES Chargement(noVoyage)
);

CREATE TABLE Client (
noClient NUMBER (3) NOT NULL,
 -- Donneur de Voyage /Chargement
CONSTRAINT pk_noClient PRIMARY KEY (noClient)
);

CREATE TABLE Soumission (
dateSoumission DATE
);


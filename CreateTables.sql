CREATE TABLE Route (
route_id NUMBER(3) NOT NULL,
cRoute varchar(30) NOT NULL,
nLatOri NUMBER(8,5) NOT NULL,
nLongOri NUMBER (8,5) NOT NULL,
nLatDes NUMBER(8,5) NOT NULL,
nLongDes NUMBER (8,5) NOT NULL,
nDistance NUMBER(38) NOT NULL,
CONSTRAINT pk_Route PRIMARY KEY (route_id)
);/

CREATE TABLE TypeEquipement (
equipement_id number(3) NOT NULL,
cTypeEquipement varchar(30),
nCout number(8,2) NOT NULL,
CONSTRAINT equipement_id PRIMARY KEY(equipement_id),
CHECK (equipement_id BETWEEN 0 and 1)
);/


CREATE TABLE Remorque (
remorque_id number(3) NOT NULL,
capacite NUMBER(38) NOT NULL,
longueur NUMBER(38) NOT NULL,
largeur NUMBER(38) NOT NULL,
hauteur NUMBER(38) NOT NULL,
equipement_id number(3) NOT NULL,
CONSTRAINT pk_remorque_id PRIMARY KEY (remorque_id),
CONSTRAINT equipment FOREIGN KEY (equipement_id) REFERENCES TypeEquipement(equipement_id)
);/


CREATE TABLE Camion (
camion_id NUMBER (3) NOT NULL,
tracteur NUMBER(3) NOT NULL,
remorque_id NUMBER(3) NOT NULL,
CONSTRAINT pk_camion_id PRIMARY KEY (camion_id),
CONSTRAINT fk_remorque_id FOREIGN KEY (remorque_id) REFERENCES Remorque(remorque_id),
CHECK (tracteur BETWEEN 0 and 1)
);/


CREATE TABLE Position (
position_id NUMBER(3) NOT NULL,
camion_id NUMBER(3) NOT NULL UNIQUE,
cPosition varchar(30) NOT NULL,
nLat NUMBER(8,5) NOT NULL,
nLong NUMBER(8,5) NOT NULL,
bDisponible NUMBER(3) NOT NULL,
CONSTRAINT position_id PRIMARY KEY (position_id),
CONSTRAINT fk_camion_id FOREIGN KEY (camion_id) REFERENCES Camion(camion_id),
CHECK (bDisponible BETWEEN 0 and 1 ) -- 0 false, 1 true
);/

CREATE TABLE Chargement (
noChargement NUMBER(3) NOT NULL,
route_id NUMBER(3) NOT NULL,
poids NUMBER(8,2) NOT NULL, -- en LBS
longueur NUMBER(8,2) NOT NULL, -- en pieds
largeur NUMBER(8,2) NOT NULL, -- en pieds
hauteur NUMBER(8,2) NOT NULL, -- en pieds
CONSTRAINT pk_noChargement PRIMARY KEY (noChargement),
CONSTRAINT fk_cRoute FOREIGN KEY (route_id) REFERENCES Route(route_id)
);


CREATE TABLE Soumission (
noSoumission NUMBER (3) NOT NULL,
noChargement NUMBER(3) NOT NULL,
dateSoumission DATE,
prixSoumission NUMBER(8,2), -- Canadian
CONSTRAINT pk_noSoumission PRIMARY KEY (noSoumission),
CONSTRAINT fk_noChargement FOREIGN KEY (noChargement) REFERENCES Chargement(noChargement)
);

CREATE TABLE Client (
noClient NUMBER (3) NOT NULL,
noSoumission NUMBER (3) NOT NULL,
 -- Donneur de Voyage /Chargement
CONSTRAINT pk_noClient PRIMARY KEY (noClient),
CONSTRAINT fk_noSoumission FOREIGN KEY (noSoumission) REFERENCES Soumission(noSoumission)
);

CREATE TABLE Compagnie ( -- La compagnie a les camions
noCompagnie NUMBER(3) NOT NULL,
position_id NUMBER(3) NOT NULL,
nomCompagnie varchar(30) NOT NULL,
noClient NUMBER(3) NOT NULL,

CONSTRAINT pk_noCompagnie PRIMARY KEY (noCompagnie),
CONSTRAINT fk_position_id FOREIGN KEY (position_id) REFERENCES Position(position_id),
CONSTRAINT fk_no_client FOREIGN KEY (noClient) REFERENCES Client(noClient)
-- CONSTRIANT fk_noVoyage FOREIGN KEY (noVoyage) REFERENCES Chargement(noVoyage)
);










CREATE TABLE Route (
pRoute NUMBER(3) NOT NULL,
cRoute varchar(30) NOT NULL,
nLatOri NUMBER(8,5) NOT NULL,
nLongOri NUMBER (8,5) NOT NULL,
nLatDes NUMBER(8,5) NOT NULL,
nLongDes NUMBER (8,5) NOT NULL,
nDistance NUMBER(38) NOT NULL CHECK (nDistance > 0 ),

CONSTRAINT pk_Route PRIMARY KEY (pRoute)
);/

CREATE TABLE Tracteur (
pTracteur number (3) NOT NULL,
Actif number (3) NOT NULL CHECK (Actif BETWEEN 0 and 1),

CONSTRAINT pk_pTracteur PRIMARY KEY (pTracteur)
);

CREATE TABLE TypeEquipement (
pTypeEquipement number(3) NOT NULL,
cTypeEquipement varchar(30) NOT NULL,
nCout number(8,2) NOT NULL,

CONSTRAINT pk_TypeEquipement PRIMARY KEY(pTypeEquipement),
CHECK (pTypeEquipement BETWEEN 0 and 1)
);/


CREATE TABLE Equipement (
pEquipement number(3) NOT NULL,
pTypeEquipement number(3) NOT NULL,
capacite NUMBER(38) NOT NULL CHECK (capacite > 0),
longueur NUMBER(38) NOT NULL CHECK (longueur > 0),
largeur NUMBER(38) NOT NULL CHECK (largeur > 0),
hauteur NUMBER(38) NOT NULL CHECK (hauteur > 0),


CONSTRAINT pk_pEquipement PRIMARY KEY (pEquipement),
CONSTRAINT fk_pTypeEquipement FOREIGN KEY (pTypeEquipement) REFERENCES TypeEquipement(pTypeEquipement)
);/


CREATE TABLE Compagnie ( -- La compagnie a les camions
noCompagnie NUMBER(3) NOT NULL,
nomCompagnie varchar(30) NOT NULL,
telephone varchar(30) NOT NULL,
addresse varchar(60) NOT NULL,
--camion_id NUMBER (3) NOT NULL,

CONSTRAINT pk_noCompagnie PRIMARY KEY (noCompagnie)

);



CREATE TABLE Camion (
camion_id NUMBER (3) NOT NULL,
noCompagnie NUMBER(3) NOT NULL,
pEquipement NUMBER(3) NOT NULL,
pTracteur NUMBER(3) NOT NULL,

CONSTRAINT pk_camion_id PRIMARY KEY (camion_id),
CONSTRAINT fk_pTracteur FOREIGN KEY (pTracteur) REFERENCES Tracteur(pTracteur),
CONSTRAINT fk_pEquipement FOREIGN KEY (pEquipement) REFERENCES Equipement(pEquipement),
CONSTRAINT fk_noCompagnie FOREIGN KEY (noCompagnie) REFERENCES Compagnie(noCompagnie)
);/


CREATE TABLE Position (
pPosition NUMBER(3) NOT NULL,
cPosition varchar(30) NOT NULL,
nLat NUMBER(8,5) NOT NULL,
nLong NUMBER(8,5) NOT NULL,
bDisponible NUMBER(3) NOT NULL,
camion_id NUMBER(3) NOT NULL UNIQUE,

CONSTRAINT pk_pPosition PRIMARY KEY (pPosition),
CONSTRAINT fk_camion_id FOREIGN KEY (camion_id) REFERENCES Camion(camion_id),

CHECK (bDisponible BETWEEN 0 and 1 ) -- 0 false, 1 true
);/

CREATE TABLE Chargement (
pChargement NUMBER(3) NOT NULL,
pRoute NUMBER(3) NOT NULL,
poids NUMBER(8,2) NOT NULL CHECK (poids > 0), -- en LBS
longueur NUMBER(8,2) NOT NULL CHECK (longueur > 0), -- en pieds
largeur NUMBER(8,2) NOT NULL CHECK (largeur > 0), -- en pieds
hauteur NUMBER(8,2) NOT NULL CHECK (hauteur > 0), -- en pieds
skid number(3) NOT NULL CHECK (skid > 0),

CONSTRAINT pk_pChargement PRIMARY KEY (pChargement),
CONSTRAINT fk_pRoute FOREIGN KEY (pRoute) REFERENCES Route(pRoute)
);




CREATE TABLE Client (
pClient NUMBER (3) NOT NULL,
nom varchar(30) NOT NULL,
telephone varchar(30) NOT NULL,
addresse varchar(60) NOT NULL,


CONSTRAINT pk_pClient PRIMARY KEY (pClient)
);



CREATE TABLE Soumission (
noSoumission NUMBER (3) NOT NULL, -- PK
pClient NUMBER (3) not null, -- fk
pChargement NUMBER(3) NOT NULL, -- FK
dateSoumission DATE NOT NULL,
prixRoute NUMBER(8,2) NOT NULL, -- Canadien
prixCarbu NUMBER(8,2) NOT NULL, -- $/L
camion_id NUMBER (3) NOT NULL, --fk

CONSTRAINT pk_noSoumission PRIMARY KEY (noSoumission),
CONSTRAINT fk_pChargement FOREIGN KEY (pChargement) REFERENCES Chargement(pChargement),
CONSTRAINT fk_camionid FOREIGN KEY (camion_id) REFERENCES Camion(camion_id),
CONSTRAINT fk_pClient FOREIGN KEY (pClient) REFERENCES Client(pClient)

);












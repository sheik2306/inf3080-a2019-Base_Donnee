CREATE TABLE Route (
pRoute INTEGER AUTO_INCREMENT PRIMARY KEY, -- PK
cRoute 	varchar(30) not null,  
nLatOri  DOUBLE(8,5)not null, 	-- Coord de lat depart
nLongOri 	DOUBLE(8,5)not null, --Coord de long depart
nLatDes 	DOUBLE(8,5)not null,  -- coord de lat destiation	
nLongDes 	DOUBLE(8,5)not null, -- coord de long destination
nDistance INTEGER not null, -- Distance en KM	

) ;

-- CREATE TABLE camion (
-- 	no_Camion INTEGER AUTO_INCREMENT PRIMARY KEY,
--     pRoute INTEGER,

-- FOREIGN KEY (pRoute) REFERENCES position(pRoute)
-- );
	

CREATE TABLE TypeEquipement (

pTypeEquipement  INTEGER AUTO_INCREMENT PRIMARY KEY, --pk
cTypeEquipement varchar(30) not null,	
nCout 	DOUBLE(8,2) not null,	--Coût par KM

);


CREATE TABLE Position(

pPosition INTEGER	AUTO_INCREMENT PRIMARY KEY,	--pk
cPosition 	varchar(30) ,	
nLat 	DOUBLE(8,5), 	
nLong 	DOUBLE(8,5), 	
bDisponible 		--Le camion est disponible pour prendre des voyages
pCamion 		--fk ID DU CAMION

);



CREATE TABLE Position (

  cPosition varchar(30) NOT NULL, -- Both a primary and foreign key
  nLat DOUBLE(8,5) NOT NULL,
  nLong DOUBLE(8,5) NOT NULL,
  bDisponible varchar(30) not null, -- Disponible oui ou non ?
  cCamion_id int(255) not null, -- links le camion ID
  PRIMARY KEY (cPosition)
  FOREIGN KEY (cCamion_id) REFERENCES Camion (id) ON DELETE CASCADE

	);

CREATE TABLE Camion (


)
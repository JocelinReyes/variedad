CREATE TABLE Animales(
noAnimal INTEGER (3) NOT NULL,
tipo VARCHAR (20) NOT NULL,
genero VARCHAR (20) NOT NULL,
edad INTEGER (3) NOT NULL,
CONSTRAINT Animales_noAnimal_pk
PRIMARY KEY (noAnimal)
);
--Este es un ejemplo de como crear una tabla en nuestra base de datos--
CREATE TABLE Vacunas(
idVacuna INTEGER (3) NOT NULL,
descripcion VARCHAR (20) NOT NULL,
CONSTRAINT Vacunas_idVacuna_pk
PRIMARY KEY (idVacuna)
);

CREATE TABLE VacunacionAnimal(
idVacuna INT,
noAnimla INT,
fechaAplicacion DATE,
PRIMARY KEY (noAnimal, idVacuna),
FOREIGN KEY (idVacuna) REFERENCES Vacunas (idVacuna),
FOREIGN KEY (noAnimal) REFERENCES Animales (noAnimal)
);

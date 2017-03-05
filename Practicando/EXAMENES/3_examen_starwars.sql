DROP DATABASE IF EXISTS STARWARS;

CREATE DATABASE STARWARS;

USE STARWARS;

CREATE TABLE ACTORES(

	CODIGO INTEGER NOT NULL,
	NOMBRE VARCHAR (40),
	FECHA DATE NOT NULL,
	NACIONALIDAD VARCHAR(20),
	PRIMARY KEY(CODIGO)

);

INSERT INTO ACTORES

	VALUES('1','REM','1996/01/01','Española');

INSERT INTO ACTORES

	VALUES('2','Emilia','1997/01/01','Española');

INSERT INTO ACTORES

	VALUES('3','RAM','1998/01/01','Española');

CREATE TABLE PERSONAJES(

	CODIGO INTEGER NOT NULL,
	NOMBRE VARCHAR (30) NOT NULL,
	RAZA VARCHAR (30) NOT NULL,
	GRADO VARCHAR (30) NOT NULL,
	CODIGO_ACTOR INTEGER NOT NULL,
	PRIMARY KEY (CODIGO),
	FOREIGN KEY (CODIGO_ACTOR)
		REFERENCES ACTORES(CODIGO)
		ON UPDATE CASCADE ON DELETE CASCADE

);

INSERT INTO PERSONAJES

	VALUES('1','Juan','elfo','almirante','1');

INSERT INTO PERSONAJES

	VALUES('2','Marcos','trol','peon','2');

INSERT INTO PERSONAJES

	VALUES('3','Claudia','humano','becario','3');
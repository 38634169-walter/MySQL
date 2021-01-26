CREATE DATABASE clase2;

USE clase2;

CREATE TABLE internacionales(
numero INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
pais VARCHAR(20) NOT NULL
);

CREATE TABLE nacionales(
numero INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
edad INT,
pais VARCHAR(20) DEFAULT"Argentina"
);
DROP TABLE goleadores;
CREATE TABLE goleadores(
numero INT,
nombre VARCHAR(30) NOT NULL,
pais VARCHAR(20) NOT NULL,
cantidad INT NOT NULL PRIMARY KEY
);

INSERT INTO nacionales(nombre,edad) VALUES
("Filliol","71"),
("Perfumo","88"),
("Sorin","42"),
("Zanetti","44"),
("Redondo","50"),
("Pasarella","69"),
("Messi","33"),
("Mascherano","37"),
("Batistuta","45"),
("Maradona","60"),
("Kempes","70")
;
describe goleadores;
INSERT INTO internacionales (nombre, pais) VALUES
("Zoff","Italia"),
("Baressi","Italia"),
("Roberto Carlos","Brasil"),
("Cafu","Brasil"),
("Varela","Uruguay"),
("Beckenbauer","Alemania"),
("Messi","Argentina"),
("Iniesta","España"),
("Van Basten","Holanda"),
("Maradona","Argentina"),
("Pele","Brasil")
;

INSERT INTO goleadores(numero,nombre,pais,cantidad)VALUES
("1","Klose","Alemania","16"),
("2","Ronaldo","Brasil","15"),
("3","Muller","Alemania","14"),
("4","Fontaine","Francia","13"),
("5","Pele","Brasil","12"),
("6","Klinsman","Alemania","11"),
("6","Kocsis","Hungria","11"),
("7","Batistuta","Argentina","10"),
("7","Cubillas","Peru","10"),
("7","Lato","Polonia","10"),
("7","Lineker","Inglaterra","10"),
("7","Muller","Alemania","10"),
("7","Rahn","Alemania","10")
;


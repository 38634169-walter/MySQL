CREATE DATABASE consultas;

CREATE TABLE verduras (
productos VARCHAR(25) NOT NULL PRIMARY KEY,
origen VARCHAR(25) DEFAULT "Argentina",
stock INT NOT NULL
);

CREATE TABLE frutas (
productos VARCHAR(20) PRIMARY KEY NOT NULL,
origen VARCHAR(25) DEFAULT "Argentina",
stock INT NOT NULL,
estacion ENUM("SI","NO")
);


INSERT INTO verduras (productos,origen,stock) VALUES
("Lechuga","Bolivia",90),
("Tomate","Brasil",88),
("Brocoli","Argentina",6),
("Radichuela","Peru",900),
("Papa","Paraguay",345),
("Zanahoria","Argentina",765),
("Zapallo","Argentina",3),
("Cebolla","Uruguay",908),
("Apio","Argentina",2),
("Calabaza","Bolivia",55)
;

INSERT INTO frutas (productos,origen,stock,estacion) VALUES
("Kiwi","Argentina",256,"SI"),
("Manzana","Urguay",88,"NO"),
("Naranja","Argentina",120,"NO"),
("Banana","Ecuador",56,"NO"),
("Mandarina","Argentina",2000,"SI"),
("Arandano","Argentina",9999,"SI"),
("Uva","Argentina",89,"SI"),
("Durazno","Brasil",78,"NO"),
("Ciruela","Brasil",900,"SI"),
("Frutilla","Uruguay",5000,"NO")
;

SELECT * FROM verduras;
SELECT productos FROM frutas;
SELECT stock FROM frutas;

SELECT productos,origen FROM verduras LIMIT 5; 
SELECT * FROM verduras WHERE  origen > "Argentina" AND stock<10000;
SELECT productos,estacion FROM frutas WHERE origen ="Argentina";
SELECT * FROM verduras WHERE stock <10;
SELECT * FROM frutas WHERE estacion ="NO" AND origen <>"Argentina";
SELECT * FROM frutas WHERE productos LIKE "A%";





CREATE DATABASE libreria;

CREATE TABLE autores(
nombre VARCHAR(20) NOT NULL,
idioma ENUM("español","ingles","otro")
);

INSERT INTO autores(nombre,idioma) VALUES
("Ricardo Sorin", "español"),
("Armando Tuneles","otro"),
("Jhon Lennon","ingles"),
("Miguel Angel","español");

CREATE TABLE libros(
titulo VARCHAR(20) NOT NULL,
autor VARCHAR(20) NOT NULL,
año_de_edicion DATE NOT NULL,
precio DOUBLE NOT NULL,
genero ENUM("drama","suspenso","terror")
);

INSERT INTO libros(titulo,autor,año_de_edicion,precio,genero) VALUE
("quien lo dejo?","Ricardo Sorin",'1994-10-09',1596, "drama"),
("el armario","Jhon Lennon",'1969-07-03',167,"terror"),
("detras de la ventana","Ricardo Sorin",'1993-08-12',189,"terror"),
("devil","Miguel Angel",'1986-03-16',1500,"terror"),
("volver","Ricardo Sorin",'1979-10-29',1000,"suspenso"),
("aguas","Armando Tuneles",'1982-06-24',1200,"drama"),
("atardece","Miguel Angel",'1976-12-14',123,"suspenso"),
("el columpio","Armando Tuneles",'1956-11-21',899,"terror"),
("jugando","Miguel Angel",'1989-04-27',789,"suspenso"),
("detras de ti","Ricardo Sorin",'1967-03-02',504,"terror");

SELECT MIN(año_de_edicion), titulo FROM libros GROUP BY titulo LIMIT 1;
SELECT AVG(precio) AS prome_precio_libros_terror FROM libros WHERE genero="terror";
SELECT COUNT(nombre) FROM autores WHERE idioma="ingles";

SELECT COUNT(l.genero),a.nombre
FROM autores AS a JOIN libros AS l
ON a.nombre = l.autor
WHERE l.genero="suspenso"
GROUP BY a.nombre;
 
SELECT titulo FROM libros WHERE precio>(SELECT AVG(precio) FROM libros);
SELECT MIN(precio) FROM libros WHERE genero="terror";

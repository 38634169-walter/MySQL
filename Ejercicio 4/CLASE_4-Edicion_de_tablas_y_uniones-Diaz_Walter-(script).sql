CREATE DATABASE musica;

CREATE TABLE nacional(
ranking INT AUTO_INCREMENT PRIMARY KEY,
autor VARCHAR(20),
tema VARCHAR (50),
año INT
);

CREATE TABLE latino(
ranking INT AUTO_INCREMENT PRIMARY KEY,
autor VARCHAR(20),
tema VARCHAR (50),
año VARCHAR(4)
);

CREATE TABLE internacional(
ranking INT AUTO_INCREMENT PRIMARY KEY,
autor VARCHAR(20),
tema VARCHAR (50),
año INT,
idioma VARCHAR (20) DEFAULT "Inglés"
);

INSERT INTO nacional (autor , tema)  values
("Soda Stereo" , "Persiana Americana"),
("Charly García" , "Los Dinosaurios"),
("Spinetta" , "Rezo por vos"),
("Los gatos" , "La Balsa"),
("Divididos" , "Que Tal?");

INSERT INTO latino (autor , tema) values
("Café Tacuba" , "Eres"),
("Spinetta" , "Rezo por vos"),
("La Vela Puerca" , "Zafar"),
("Os Paralamas" , "Una brasileira"),
("Mana" , "Rayando el Sol");

INSERT INTO internacional (autor , tema) values
("Queen" , "Love of my life"),
("Guns n Roses" , "November rain"),
("Rolling Stones" , "Satisfaction"),
("The Beatles" , "Twist and shout"),
("Led Zeppelin" , "Stairway to heaven");

SELECT * FROM nacional;
ALTER TABLE internacional RENAME TO inter;
ALTER TABLE inter DROP COLUMN idioma;
UPDATE nacional SET autor="Serú Girán" WHERE autor="Los gatos";

SELECT autor, tema FROM inter
UNION ALL
SELECT autor, tema FROM nacional
UNION ALL
SELECT autor, tema FROM latino;

SELECT * FROM inter 
UNION
SELECT * FROM nacional
UNION 
SELECT * FROM latino ORDER BY tema;

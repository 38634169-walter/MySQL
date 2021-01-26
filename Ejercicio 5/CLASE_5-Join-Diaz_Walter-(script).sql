CREATE DATABASE Cable;

CREATE TABLE usuarios(
apellido VARCHAR(20) NOT NULL,
direccion VARCHAR(30) NOT NULL,
dni INT NOT NULL,
localidad VARCHAR(20) DEFAULT "TIGRE"
);

CREATE TABLE planes(
usuarios VARCHAR(20) NOT NULL,
plan ENUM("base","extra","premmium"),
bocas INT NOT NULL
);

CREATE TABLE costos(
planes ENUM ("base","extra","premmium"),
valores DOUBLE NOT NULL
);


INSERT INTO usuarios(apellido, direccion,dni, localidad) VALUES
("Diaz","Tucuman 288", 38634169,"Pacheco"),
("Perez","Formosa 888", 389757969,"Olivos"),
("Dominguez","Pasteur 588", 386644369,"Olivos"),
("Ramirez","Larralde 898", 4264769,"Talar"),
("Lopez","Yrigoyen 784", 134258,"Tigre"),
("Rivero","Mendoza 671", 32453476,"Tigre"),
("Castillo","Azucenas 162",365789,"San Fernando"),
("Solis","Balcarce 881", 8765432,"Pacheco"),
("Gonzales","Curupaity 48", 32546578,"Olivos"),
("Juarez","Monteagudo 34", 9375156,"San Fernando");

SELECT * FROM usuarios;

INSERT INTO planes (usuarios,plan,bocas) VALUES
("Ramirez","extra", 12),
("Gonzales","premmium", 32),
("Perez","base", 3),
("Solis","base", 8),
("Lopez","extra", 19),
("Dominguez","premmium", 23),
("Rivero","base", 9),
("Juarez","base",6),
("Diaz","base", 2),
("Castillo","premmium",78);

INSERT INTO costos(planes,valores) VALUES
("base",1300.00),
("extra",2500.00),
("premmium",3000.00);


SELECT apellido FROM usuarios WHERE localidad="Olivos";

SELECT u.apellido , p.plan , p.bocas
FROM usuarios AS u JOIN planes AS p
ON u.apellido = p.usuarios;

SELECT u.apellido , u.dni , p.plan , c. valores
FROM usuarios AS u JOIN planes AS p
ON u.apellido = p.usuarios
JOIN costos AS c
ON p.plan = c.planes;

SELECT u.apellido , p.plan
FROM usuarios AS u JOIN planes AS p
ON u.apellido = p.usuarios
JOIN costos AS c
ON p.plan = c.planes
WHERE c.valores>2000;
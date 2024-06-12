create database comision5;
use comision5;

create table Profesores(
idProfesores int auto_increment,
nombre varchar(50),
apellido varchar(50) not null,
salario double not null,
edad int not null,
ciudad varchar(50) not null,
correo varchar(50),
primary key(idProfesores)
);

insert into Profesores (nombre, apellido, salario, edad, ciudad, correo) 
values ('Tobias','Nieva',70000,20,'Lules','tobiasnieva00@gmail.com'),
       ('Joaquin','Jara',90000,22,'Yerba Buena','joa03jara@gmail.com'),
	   ('Hernan','Cano',50000,27,'Lules','hernancano11@gmail.com');

alter table Profesores
drop correo;

create table Materias(
idMaterias int,
nombre varchar (50),
idProfesores int,
primary key(idProfesores),
foreign key (idProfesores) references Profesores(idProfesores)
);

SELECT COUNT(idProfesores) FROM Profesores limit 0, 5;

SELECT * from Profesores order by edad desc limit 2;

SELECT * FROM Profesores
WHERE salario < (
    SELECT salario
    FROM Profesores
    WHERE idProfesores = 2
);

CREATE VIEW usuario AS
SELECT nombre, apellido, edad
FROM Profesores;




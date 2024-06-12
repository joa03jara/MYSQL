 create database ejercicio2;
use ejercicio2;

create table Alumnos(
idAlumnos int primary key auto_increment,
nombre varchar(50),
apellido varchar(50),
edad varchar(50),
ciudad varchar(50),
direccion varchar(50),
DNI int
);

insert into Alumnos(nombre, apellido, edad, direccion, ciudad, DNI)
values ('Melina', 'Jara', '25','Mosconi', 'Ciudad de Tucuman','11111111'),
       ('Zulma', 'Sardina', '58','Mosconi', 'Yerba Buena','22222222'),
       ('David', 'Sardina', '54','Mosconi', 'Yerba Buena', '33333333'),
       ('Valerio', 'Sardina', '76','Mosconi', 'Yerba Buena', '44444444'),
	   ('Oscar', 'Schenfeld', '47','Mosconi', 'Victorino de la Plaza','55555555'),
       ('Valeria', 'Sardina', '45','Mosconi', 'Victorino de la Plaza','66666666'),
       ('Naldo', 'Barraza', '44','Mosconi','Ciudad de Tucuman','77777777'),
       ('Joaquin', 'Jara', '22','Mosconi','Ciudad de Tucuman','88888888'),
       ('Belen', 'Castro', '21','Mosconi','Ciudad de Tucuman','99999999'),
       ('Naila', 'Barraza', '04','Mosconi','Ciudad de Tucuman','00000000');
       
select avg(edad)
from Alumnos;

select min(edad)
from Alumnos;

select max(edad)
from Alumnos;

select count(idAlumnos)
from Alumnos;

select (edad)
from Alumnos
order by edad asc
limit 5;

select count(idAlumnos), ciudad
from Alumnos
group by ciudad;

CREATE TABLE promedio (
  idPromedio INT AUTO_INCREMENT PRIMARY KEY,
  idAlumno INT,
  cantidadNotas INT,
  valorPromedio FLOAT
);

INSERT INTO promedio (idAlumno, cantidadNotas, valorPromedio)
VALUES
(1, 3, 8.5),
(1, 3, 8.5),
(1, 3, 8.5);

select * from Alumnos
inner join promedio on idAlumnos = idPromedio;
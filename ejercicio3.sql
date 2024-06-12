create database ejercicio3;
use ejercicio3;
       
create table Alumnos(
idAlumnos int not null auto_increment,
nombre varchar(50) not null,
apellido varchar(50) not null,
edad int not null,
ciudad varchar(50),
direccion varchar(50),
DNI int not null,
valorPromedio decimal (4, 2)not null,
primary key (idAlumnos)
);

insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Hernan','Garcia','23','Famailla','24 de Septiembre 42','42456906','6');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Pedro','Fernandez','33','Famailla','Laprida 142','25179366','7.5');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Esteban','Rodriguez','22','Famailla','Rivadavia 342','25478021','10');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Nicolas','Almazan','21','San Miguel de Tucuman','Columbres 442','6700301','9');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) values ('Ernesto','Garcia','23','San Miguel de Tucuman','San Lorenzo 542','46951050','6');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Ramon','Olarte','24','Yerba Buena','Corrientes 642','34098102','8');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Olive','Serrizuela','25','Yerba buena','Jose Hernandez 763','89102071','3');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Andres','Meaya','27','Yerba Buena','San Luis 842','116839023','8.5');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Alejandro','Bernabe','28','Lules','Mendoza 942','00248403','9');
insert into Alumnos (nombre, apellido, edad, ciudad, direccion, DNI, valorPromedio) value ('Cristian','Betancur','29','Lules','24 de Septiembre 1042','10158090','7');

select * from Alumnos
where edad > ( 
select edad 
from Alumnos 
where idAlumnos = 5
);
    

SELECT idAlumnos, nombre, edad, ciudad
FROM Alumnos
WHERE ciudad = 'Lules' and valorPromedio > (
    SELECT valorPromedio
    FROM Alumnos
    WHERE nombre = 'Pedro' 
);


SELECT idAlumnos, nombre, ciudad, valorPromedio
FROM Alumnos
WHERE ciudad = 'Lules' and valorPromedio > ANY (
    SELECT valorPromedio
    FROM Alumnos
    WHERE ciudad = 'Lules'
);

select idAlumnos , nombre , ciudad , valorPromedio
FROM Alumnos
where valorPromedio > ALL (
select valorPromedio
FROM Alumnos
where ciudad = 'Yerba Buena'
);

create table primerParcial(
idPrimerParcial int not null auto_increment,
idAlumno int not null unique,
nota decimal not null,
primary Key (idPrimerParcial)
);

insert into primerParcial (idAlumno, nota)
value (1,5),(2,8),(3,9),(4,8),(5,6),(6,8),(7,4),(8,3),(9,10),(10,7);

select idAlumnos , nombre , apellido
From Alumnos 
inner join primerParcial on idAlumnos = idPrimerParcial
WHERE nota BETWEEN 5 AND 10;









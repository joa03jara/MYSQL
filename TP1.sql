create database Tp1;
use Tp1;

create table Grupo(
	idGrupo int primary key auto_increment,
    integrante1 varchar(45),
    integrante2 varchar(45),
    integrante3 varchar(45),
    integrante4 varchar(45),
    integrante5 varchar(45) 
);

create table Alumno(
	idAlumno int primary key auto_increment,
    nombre varchar(45) not null,
    apellido varchar(45) not null,
    edad int not null,
    ciudad varchar(45) not null,
    domicilio varchar (45) not null,
    dni int unique not null,
    idGrupo int,
    foreign key(idGrupo) references Grupo(idGrupo)
);

create table PrimerParcial(
	idPrimerParcial int primary key auto_increment,
    idAlumno int not null,
    notaParcial decimal not null,
    foreign key (idAlumno) references Alumno(idAlumno)
);

insert into Grupo (integrante1, integrante2,integrante3) values ('Joaquin Jara','Nicolas Contreras','Joaquin Coronel');
insert into Grupo (integrante1, integrante2,integrante3) values ('Cordoba Geronimo','Colella Giuliano','Joaquin Coronel');
insert into Grupo (integrante1, integrante2) values ('Cabrera Esteban', 'Mauricio Romano');

insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI,idGrupo) values ('Joaquín',' Jara','22','San Miguel de Tucumán','Av.Além 595','44564321',1);
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI,idGrupo) values ('Nicolás',' Contreras','25','San Miguel de Tucumán','Santiago 151','41564321',1);
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI,idGrupo) values ('Joaquín',' Coronel','22','San Miguel de Tucumán','Eduardo Wilde 156','43001609',1);
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI,idGrupo) values ('Gerónimo',' Córdoba','20','Lules','Córdoba 688','45564322',2);
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI,idGrupo) values ('Colella',' Giuliano','22','Famaillá','Muñecas 322','43564321',2);
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI,idGrupo) values ('Juan Marco',' Cristori','21','Yerba Buena','Adolfo de la Vega 222','44564322',2);
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI,idGrupo) values ('Esteban','Cabrera','22','Lules','Corrientes 545','43514321',3);
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI,idgrupo) values ('Mauricio',' Romano','27','San Miguel de Tucumán','San Martín 666','40564321',3);
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI) values ('Tobías',' Nieva','20','San Miguel de Tucumán','Mate de Luna 250','44165321');
insert into Alumno(Nombre,Apellido,Edad,Ciudad,Domicilio,DNI) values ('Ian',' Cano','23','Termas de Rio Hondo','San Juan 33 ','43564420');

insert into PrimerParcial(idAlumno,notaParcial) values (1,'4');	
insert into PrimerParcial(idAlumno,notaParcial) values (2,'8');	
insert into PrimerParcial(idAlumno,notaParcial) values (3,'3');	
insert into PrimerParcial(idAlumno,notaParcial) values (4,'7');	
insert into PrimerParcial(idAlumno,notaParcial) values (5,'2');	
insert into PrimerParcial(idAlumno,notaParcial) values (6,'10');	
insert into PrimerParcial(idAlumno,notaParcial) values (7,'5');	


-- 4 --
SELECT AVG(edad) AS edad_promedio FROM Alumno;

SELECT MAX(edad) AS edad_maxima FROM Alumno;

SELECT MIN(edad) AS edad_minima FROM Alumno;

-- 5 --
SELECT * FROM Alumno ORDER BY edad DESC LIMIT 3;

-- 6 --
SELECT edad, COUNT(*) AS cantidad_registros
FROM Alumno
GROUP BY edad;

-- 7 --
SELECT Alumno.*, PrimerParcial.notaParcial
FROM Alumno
JOIN PrimerParcial ON Alumno.idAlumno = PrimerParcial.idAlumno;

-- 8 --
SELECT *
FROM Alumno
WHERE ciudad = (
  SELECT ciudad
  FROM Alumno
  WHERE idAlumno = 4
);

-- 9 --
SELECT idAlumno, nombre, apellido
FROM Alumno
WHERE idAlumno IN (
  SELECT idAlumno
  FROM PrimerParcial
  WHERE notaParcial BETWEEN 7 AND 10
);

-- 10 --
SELECT *
FROM Alumno
WHERE edad > (
  SELECT MAX(edad)
  FROM Alumno
  WHERE ciudad = 'Yerba Buena'
);
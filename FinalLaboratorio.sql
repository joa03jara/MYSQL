create database FinalLaboratorio;
use FinalLaboratorio;

create Table Alumnos(
idAlumnos int primary key auto_increment,
Nombre varchar(50),
Apellido varchar(50) not null,
Edad varchar(50) not null,
Ciudad varchar(50),
Direccion varchar(50),
DNI int unique not null
);

insert into Alumnos(nombre,apellido,edad,ciudad,direccion,dni) values ("jose","flores","27","tartagal","san roque","11111111");
insert into Alumnos(nombre,apellido,edad,ciudad,direccion,dni) values ("florencia","zarate","23","tartagal","alberdi","22222222");
insert into Alumnos(nombre,apellido,edad,ciudad,direccion,dni) values ("julian","frias","34","mosconi","bicentenario","33333333");
insert into Alumnos(nombre,apellido,edad,ciudad,direccion,dni) values ("julieta","castro","22","tartagal","roberto romero","44444444");
insert into Alumnos(nombre,apellido,edad,ciudad,direccion,dni) values ("belen","arias","40","tartagal","avenida alem","55555555");

select * from Alumnos
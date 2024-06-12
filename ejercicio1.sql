create DataBase ejercicio1;
use ejercicio1;

create Table Alumnos(
idAlumnos int primary key auto_increment,
Nombre varchar(50),
Apellido varchar(50) not null,
Edad varchar(50) not null,
Ciudad varchar(50),
Direccion varchar(50),
DNI int unique not null
);

alter table Alumnos
add Correo varchar(50) not null;

INSERT INTO Alumnos (Nombre, Apellido, Edad, Direccion, Ciudad, DNI, Correo)
VALUES ('Melina', 'Jara', '25', 'Mosconi', 'Ciudad de Tucuman', '11111111','melina@gmail.com'),
       ('Zulma', 'Sardina', '58', 'Mosconi', 'Yerba Buena', '22222222', 'zulma@gmail.com'),
       ('David', 'Sardina', '54', 'Mosconi', 'Yerba Buena', '33333333','david@gmail.com'),
       ('Valerio', 'Sardina', '76', 'Mosconi', 'Yerba Buena', '44444444','valerio@gmail.com'),
	   ('Oscar', 'Schenfeld', '47', 'Mosconi', 'Victorino de la Plaza', '55555555','oscar@gmail.com'),
       ('Valeria', 'Sardina', '45', 'Mosconi', 'Victorino de la Plaza', '66666666','valeria@gmail.com'),
       ('Naldo', 'Barraza', '44', 'Mosconi', 'Ciudad de Tucuman', '77777777', 'naldo@gmail.com'),
       ('Joaquin', 'Jara', '22', 'Mosconi', 'Ciudad de Tucuman', '88888888','joaquin@gmail.com'),
       ('Belen', 'Castro', '21', 'Mosconi', 'Ciudad de Tucuman', '99999999', 'belen@gmail.com'),
       ('Naila', 'Barraza', '4', 'Mosconi', 'Ciudad de Tucuman', '00000000', 'naila@gmail.com');

UPDATE Alumnos
SET ciudad = 'San Miguel de Tucuman'
WHERE ciudad = 'Ciudad de Tucuman';
       
       SELECT * FROM Alumnos;
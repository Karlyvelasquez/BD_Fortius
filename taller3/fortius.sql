--create database GestionEmplea2
use GestionEmplea2

create table empleado (

id_empleado int not null primary key,
nombre varchar(50),
celular varchar(50),
direccion varchar (50));



create table proyecto (

id_proyecto int not null primary key,
nombre varchar(50),
CantidadEm varchar(50));

create table Departamento (

id_departamento int primary key,
nombre varchar(50),
dependencia varchar(50),
id_proyecto int not null);

create table habilidad (

id_habilidad int not null primary key,
nombre varchar(50));

create table EmpleadoHabilidad (

id_empleadoHabilidad int, 
id_habilidad int not null,
id_empleado int not null,
Foreign key (id_habilidad) references habilidad (id_habilidad),
Foreign key (id_empleado) references empleado (id_empleado),
);

create table EmpleadoDepartamento (

id_empleadoDepartamento int, 
id_departamento int not null,
id_empleado int not null,
Foreign key (id_departamento) references Departamento (id_departamento),
Foreign key (id_empleado) references empleado (id_empleado)
);

Alter table Departamento 
add foreign key (id_proyecto) references Departamento (id_proyecto)


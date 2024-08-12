create database Zapateria_umi

create table Clientes (
DniCliente int not null identity ,
Nombres varchar (50) not null,
Apellidos varchar (50)not null,
FechaNac varchar (15)not null,
Telefono varchar (10)not null,
primary key (DniCliente)
);


create table Proveedores (
DniProveedor int not null identity,
Nombre varchar (50) not null,
Direccion varchar (60)not null,
primary key (DniProveedor)
);

Create table Productos (
Codigo int not null identity,
Nombre varchar (50) not null,
Precio Varchar (40) not null,
DniProveedor int,
primary key (Codigo),
foreign key (DniProveedor) references Proveedores(DniProveedor)
);

create table compras (
DniCliente int not null,
Codigo int not null,
foreign key (DniCliente) references Clientes (DniCliente),
foreign key (Codigo) references Productos (Codigo)
);
use VideoClub
go

create table SOCIOS
(
	Id_Socio int not null,
	Nombre varchar(50) not null,
	Direccion varchar(30) not null,
	Importe decimal(15,2) not null,
	moroso char(2),
)

create table ARTICULOS
(
	Id_Articulo int not null,
	Nombre varchar(30) not null,
	Descripcion varchar(100),
	Precio decimal(10,2) not null,
	Existencia int not null,
	tipo varchar(20) not null
)

create table RENTAS
(
	Id_Rentas int not null,
	Id_Socio int not null,
	Id_Articulos int not null,
	Fecha datetime not null,
	Importe decimal (12,2)
)

create table VENTAS
(
	Id_Ventas int not null,
	Id_Socio int not null,
	Id_Articulos int not  null,
	Importe_Ven decimal (15,2) not null,
	Fecha datetime not null
)
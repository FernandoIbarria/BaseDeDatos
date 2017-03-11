use VideoClub
go

create table SOCIOS
(
	IdSocio int not null,--pk
	Nombre varchar(30) not null,
	direccion varchar(50) not null,
	telefono varchar(10),
	importe decimal(15,2) not null
	moroso char(2) not null --check
)

create table ARTICULOS
(
	IdArticulos int not null,--pk
	Descripcion char (50),
	precio decimal(15,2)not null,
	existencia int not null,
	tipo varchar(15) --check
)

--Llaves primarias
alter table SOCIOS add constraint pk_socios primary key (Idsocio)
alter table ARTICULOS add constraint pk__articulos primary key(IdArticulos)

--check
alter table SOCIOS add constraint moroso check(moroso in ('SI','NO'))
alter table ARTICULOS add constraint tipo check(tipo in('PELICULA','SURVENIR','COMESTIBLE'))
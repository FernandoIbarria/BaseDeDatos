use VideoCLub
go

--Llaves primarias
alter table SOCIOS add constraint pk_IdSocios primary key(Id_Socio)
alter table ARTICULOS add constraint pk_idarticul primary key(Id_Articulo)
alter table RENTAS add constraint pk_idarticulos primary key(Id_Rentas)
alter table VENTAS add constraint pk_idventas primary key(Id_Ventas)

--Llaves foraneas
alter table RENTAS add constraint fk_soc_rent foreign key(Id_Socio) references SOCIOS (Id_Socio)
alter table RENTAS add constraint fk_art_rent foreign key(Id_Articulos) references ARTICULOS(Id_Articulos)
alter table VENTAS add constraint fk_SOC_VEN foreign key(Id_Socio) references SOCIOS (Id_Socios)
alter table VENTAS add constraint fk_ART_VEN foreign key(Id_Artiulos) references ARTICULOS (Id_Articulos)

--Check
alter table SOCIOS add constraint moroso check(moroso in('SI','NO'))
alter table ARTICULOS add constraint Tipo check(tipo in('PELICULA', 'SURVENIR', 'COMESTIBLE'))
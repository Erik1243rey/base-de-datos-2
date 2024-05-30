use AkirasBoutiques

create table Empleados (
Id_empleado int  not null,
Nombre_empleado varchar (50) primary key not null,
Direccion varchar(40)not null,
Num_tel char(10)not null,
Edad int not null,
Id_sucursal char(9) not null,
Email varchar(40) not null,
Contraseña varchar(10)not null
);

create table Sucursal(
Id_sucursal int primary key,
Nombre_sucursal varchar(50) not null,
Nombre_empleado varchar(50) not null,
direccion varchar (70) not null,
num_tel varchar (10) not null,
ciudad varchar(30),
estado varchar(30)not null
index Nombre_empleado(Nombre_empleado)
);


ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [Nombre_empleado] FOREIGN KEY([Nombre_empleado])
REFERENCES [dbo].[Empleados] ([Nombre_empleado])
GO
select * from Empleados

select * from Sucursal

insert into Empleados (Id_empleado,Nombre_empleado, Direccion, Num_tel, Edad, Id_sucursal, Email, Contraseña)
values (3,'Roberto Gallegos Marquz', 'calle italia #345', '9217654398',24, '1', 'robertogall@empresa.com', 'RGM12345'),
(4,'Marcos Ventura Hernandez', 'calle brunet #23', '9223457613',30, '1', 'marcosvent@empresa.com', 'MVH12345'),
(5,'Yazmin Gonzalez Hernandez','calle lindavista #453','9213332498', 23, '1', 'yazmingon@empresa.com','YGH12345'),
(6, 'Sonia Alejandra Fernandez Moreno', 'calle morelos #34', '9214537890', 35, '1', 'soniaale@empleado.com','SFM12345'),
(7,'Mauricio Castillo Rodriguez', 'calle malpica #123', '9234567686', 40, '2', 'mauriciocas@empleado.com','MCR12345'),
(8, 'Carlos Rodriguez Martinez','calle miguel hidalgo #3412', '9214536777', 21 ,'2', 'carlosrod@empleado.com','CRM12345'),
(9,'Matias Mondragon Bermudez','calle lopez mateos #345','9213338976',30,'2','matiasmod@empleado.com','MMB12345'),
(10,'Vianney Cruz Caligua','calle basalto #432','9212121349',21,'2','vianneycru@empleado.com','VCC12345'),
(11,'Alejando Luria Cruz','calle teocali #908','9213219876',23,'2','alejandrolur@empleado.com','ALC12345'),
(12,'Fernando Calderon Ayala', 'calle puerto mexico #43','9213445576',23,'2','fernandocal@empleado.com','FCA12345'),
(13,'Joel Ortega Gomez','calle andeita #2','9211107010',19,'3','joelort@empleado,com','JOG12345'),
(14,'Yandi Jaret Arias','calle alamo #40','9213457687',19,'3','yandijar@empleado.com','YJA12345'),
(15,'Mario Guerrero Marquez', 'calle teocali #302','9234567813',23,'3','mariogue@empleado.com','MGM12345'),
(16,'Karina Guitierrez Magallon','calle selva tropical #343', '9213224498',34,'3','karinagui@empleado.com','KGM12345'),
(17,'Minerva Davila Hernandez','calle manantial #2','9211114554',40,'3','minervadav@empleado.com','MDH12345'),
(18,'Daniela Fernanda Diaz Ordaz','calle monumentos #849','9213424490',45,'3','danielafer@empleado.com','DFDO1234'),
(19,'Maria Toto Fernandez','calle lopez mateos #342','9235467689',23,'4','mariatot@empleado,com','MTF12345'),
(20,'Karla Tosca Fomperosa','calle emiliano zapata #435','9214325678',23,'4','karlatos@empleado.com','KTF12345'),
(21,'Marcelo Hilguera Marti','calle cosme #32','9213213214',24,'4','marcelohil@empleado.com','MHM12345'),
(22,'Danilo Fuentes Fuentes','calle lopez mateos #346','9215678787',34,'4','danilofue@empleado.com','DFF12345'),
(23,'Fernanda Gómez Farías','calle Xicoténcatl #321', '9211114451', 23,'4','fernandagom@emoleado.com', 'FGF12345'),
(24,'Mario Alberto Jimenez Salcido','calle emiliano zapata #234','9226789001',24,'4','marioalb@empleado.com','MAJS1234'),
(25, 'Marcos jilgueros Macías', 'calle 5 de mayo #343', '9213457689', 21, '5', 'marcosjil@empleado.com', 'MJM12345'),
(26, 'Angelica Blas delfín', 'calle tucanes #908', '9224325656', 24, '5', 'angelicabla@empleado.com', 'ABD12345'),
(27,'Leopoldo Gomez Rodríguez', 'calle 1ro de mayo #343', '9211212123', 34, '5', 'Leopoldogom@empleado.com', 'LGR12345'),
(28,'Carlos Jimenez Fernandez','calle lopez mateos #322','9224561111',21,'5','carlosjim@empleado.com','CJF12345'),
(29,'Marina Lopez Galvez','calle jibrantar #345','9214323212',30,'5','marinalop@empleado.com','MLG12345'),
(30,'Yeseneia Guadalupe Campos Rojo','calle andesita #21','9244569876',23,'5','yesenialop@empleado.com','YGCR1234'),
(31,'Marisol Grajales Rojas','calle girasoles #453','9242434567',39,'6','marisolgra@empleado.com','MGR12345'),
(32,'Andres Blas Dominguez','calle monumentos #345','9211894567',45,'6','andresbla@empleado.com','ABD12345'),
(33,'Evert David Hernadez Morgado','calle transismica #456','9219870011',35,'6','evertdav@empleado.com','EDHM1234'),
(34,'Christian Kim Jara','calle laureles #123','9221232323',45,'6','christiankim@empleado.com','CKJ12345'),
(35,'Emmanuel Moreno Gus','calle perdices #34','9211212121',32,'6','emmanuelmor@empleado.com','EMG12345'),
(36,'Tamara Alejandra Bernal Ramos','calle avestruces #342','9213454565',22,'6','tamaraale@empleado.com','TABR1234'),
(37,'Wilbert Cruz Martinez','calle cerro del vigia #34','9219080807',32,'7','wilbertcru@empleado,com','WCM12345'),
(38,'Alberto Medina Aldana','calle principal #12','9214568787',23,'7','albertomed@empleado.com','AMA12345'),
(39,'Rosa Gabriel Osorio','calle italia #23','9211917010',49,'7','rosagab@empleado.com','RGO12345'),
(40,'Romulo Fernandez Mendicuti','calle 2 de abril #3','9243211897',19,'7','romunlofer@empleado.com','RFM12345'),
(41,'Maria Fernanda Mondragon Huc','calle tenocelome #98','9249081110',23,'7','mariafer@empleado,com','MFMH1234'),
(42,'Samuel Enrique Barrios Enciso','calle puerto alvarado #91','9214567689',23,'7','samuelenr@empleado.com','SEBE1234')

insert into Sucursal(Id_sucursal,Nombre_sucursal,Nombre_empleado,direccion,num_tel,ciudad,estado)
values (1,'Akiras boutique: Las mercedes','Sonia Alejandra Fernandez Moreno','Calle Roble #507 fracc. la mercedes','4447831225','San Luis Potosi','San Luis Potosi'),
(2,'Akiras boutique: Obraje','Fernando Calderon Ayala','Calle Dr. Jesus Diaz Leon #438 col. Obraje','4493780921','Aguascalientes','Aguascalientes'),
(3,'Akiras boutique: Galerias Mazatlan','Daniela Fernanda Diaz Ordaz','Av. de la Marina #6240 Manina, local 25','6692932059','Mazatlan','Sinaloa'),
(4,'Akiras boutique: Zapopan','Mario Alberto Jimenez Salcido','Av. Manuel J. Clouthier 525 col. Benito juarez','3337841230','Zapopan','Jalisco'),
(5,'Akiras boutique: Melchor','Yesenia Guadalupe Campos Rojo','Av. Melchor Ocampo #2528 Zona Centro','6143906721','chihuahua','chihuahua'),
(6,'Akiras boutique: Constitucion','Tamara Alejandra Bernal Ramos','Calle Constitucion #106 Zona Centro','6181962954','Durango','Durango'),
(7,'Akiras boutique: Centro','Samuel Enrique Barrios Enciso','Av. Hidalgo #338 Zacatecas Centro','4929301250','Zacatecas','Zacatecas')


select s.Id_sucursal, s.Nombre_sucursal,e.Nombre_empleado,s.direccion,s.num_tel,s.ciudad,s.estado
from Sucursal s, Empleados e
where s.Nombre_empleado = e.Nombre_empleado

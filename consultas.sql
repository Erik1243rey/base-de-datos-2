use AkirasBoutiques

create clustered index i_tbfactura_año
on factura (fecha asc)

select *from factura
 
SELECT 
fecha, id_cliente
FROM factura
WHERE
  fecha <= '2021-12-30'
 
 SELECT 
fecha, id_cliente
FROM factura
WHERE
  fecha >= '2022-01-01'

SELECT 
fecha, id_cliente
FROM factura
WHERE
   fecha BETWEEN '2021-12-01' AND '2021-12-30'
GROUP BY fecha, id_cliente;

select * from producto
select * from factura
select * from detalle
select * from cliente
select * from categoria
select * from Empleados
select * from Sucursal

SELECT
   id_producto,id_categoria,
  SUM(stock) AS stock
  FROM producto
GROUP BY (id_categoria ),stock,id_producto
order by id_categoria asc

 SELECT *
FROM producto,categoria
WHERE id_categoria= '2'

SELECT 
f.id_factura ,f.id_cliente,f.fecha, f.id_detalle, c.nombre, c.apellido
FROM  factura f,cliente c
WHERE
  f.id_cliente = '2'
  and
  c.nombre = 'Valentina Anastasia'

SELECT 
f.id_factura ,f.id_cliente,f.fecha, f.id_detalle, c.nombre, c.apellido
FROM  factura f,cliente c
WHERE
  f.id_cliente = '17'
  and
  c.nombre = 'Zayra Manuela'

SELECT 
f.id_factura ,f.id_cliente,f.fecha, f.id_detalle, c.nombre, c.apellido
FROM  factura f,cliente c
WHERE
  f.id_cliente = '24'
  and
  c.nombre = 'Dante Eduardo'

SELECT 
f.id_factura ,f.id_cliente,f.fecha, f.id_detalle, c.nombre, c.apellido
FROM  factura f,cliente c
WHERE
  f.id_cliente = '4'
  and
  c.nombre = 'Ana maribel'

SELECT 
f.id_factura ,f.id_cliente,f.fecha, f.id_detalle, c.nombre, c.apellido
FROM  factura f,cliente c
WHERE
  f.id_cliente = '11'
  and
  c.nombre = 'Rodrigo Ismael'


  SELECT 
id_sucursal,nombre,apellido,fec_nac
FROM cliente, Sucursal
WHERE
  fec_nac <= '1994-12-30'
  order by fec_nac asc

select * from cliente 
order by nombre asc

select * from producto
order by stock desc

alter table producto
alter column nombre varchar (50)

select id_detalle, id_producto,cantidad
from detalle
where cantidad = 10
order by cantidad desc

SELECT 
e.Id_sucursal,e.Nombre_empleado,e.Id_empleado,s.Nombre_sucursal
FROM  Empleados e,Sucursal s
WHERE
  e.Id_sucursal = '6'
  and
  s.Nombre_sucursal = 'Akiras boutique: Constitucion'
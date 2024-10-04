USE Petpulsedb;

SELECT p.Nombre_Pais AS Pais, c.Nombre_Ciudad AS Ciudad
FROM Ciudad c
JOIN Pais p ON c.ID_Pais = p.ID_Pais
ORDER BY p.Nombre_Pais;
-- La consulta devuelve el nombre de cada ciudad y el pais al que pertencen ordenados por el pais

SELECT Nombre_Pais,
	(SELECT COUNT(*) FROM Ciudad WHERE Ciudad.ID_Pais = Pais.ID_Pais) AS 'Ciudades por pais'
FROM Pais;
-- La consulta devuelve la cantidad de ciudades que hay en cada pais

SELECT p.Nombre_Pais, c.Nombre_Ciudad
FROM Pais p
JOIN Ciudad c ON c.ID_Pais = p.ID_Pais
WHERE Nombre_Pais = 'Colombia'
ORDER BY Nombre_Ciudad ASC ;
-- La consulta devuelve todas las ciudades que hay en colombia ordenados alfabeticamente

SELECT v.Nombre, COUNT(DISTINCT vc.ciudad_ID_Ciudad) AS "Cantidad de ciudades"
FROM Veterinarias v
JOIN ciudadveterinaria vc ON v.ID_Veterinario = vc.veterinarias_ID_Veterinario
GROUP BY v.ID_Veterinario, v.Nombre
HAVING COUNT(DISTINCT vc.ciudad_ID_Ciudad) > 2;
-- La consulta devuelve las veterinarias que se encuentran en mas de 2 ciudades

SELECT Nombre, Direccion, Telefono, Correo FROM Usuarios
WHERE Nombre LIKE 'a%'
ORDER BY Nombre ASC;
-- La consulta devuelve los usuarios que comienzan con a

SELECT c.Nombre_Ciudad, COUNT(u.ID_Ciudad) AS "Cantidad de usuarios"
FROM Usuarios u
JOIN Ciudad c ON u.ID_Ciudad = c.ID_Ciudad
GROUP BY c.Nombre_Ciudad;
-- La consulta devuelve la cantidad de usuarios por ciudad

SELECT Nombre, Fecha_Nacimiento AS "Fecha de Nacimiento",
    DATEDIFF(CURDATE(), Fecha_Nacimiento) DIV 365 AS Edad
FROM Mascotas
WHERE  DATEDIFF(CURDATE(), Fecha_Nacimiento) DIV 365 > 3
ORDER BY Edad ASC;
-- La consulta devuelve todas las mascotas mayores de 3 años 

SELECT ROUND(AVG(Registro),2) AS 'Promedio Sueño' FROM Registros_Sueno;
-- La consulta muestra el promedio de sueño de todas las mascotas

SELECT r.Nombre_Raza, ROUND(AVG(m.Peso),2) AS 'Promedio de Peso'
FROM Razas r
JOIN Mascotas m ON r.ID = m.ID_Raza
GROUP BY r.Nombre_Raza;
-- La consulta devuelve el promedio de peso por razas

SELECT 
    Nombre, Peso,
    IF(Peso > (SELECT AVG(Peso) FROM Mascotas), 'Gordito', 'Estás bien') AS Estado
FROM 
    Mascotas;
-- La consulta devuelve un estado para las mascotas comparando el peso con el promedio 
-- y si es superior da un mensaje

SELECT m.ID_Mascota, m.Nombre, m.Genero , r.Nombre_Raza as Raza
FROM Mascotas m
JOIN Razas r ON m.ID_Raza = r.ID 
WHERE m.Genero = "Hembra"
ORDER BY m.ID_Mascota ASC ;
-- La consulta devuelve todas las mascotas de genero/sexo hembra

SELECT Registros_Oxigeno.Registro, Registros_Oxigeno.Fecha, m.Nombre AS "Nombre mascota" FROM Registros_Oxigeno 
JOIN Mascotas m ON m.ID_Mascota = Registros_Oxigeno.ID_Registros_Oxigeno
WHERE Registro < 95 AND MONTH(Fecha)=9;
-- La consulta devuelve los registros de oximetria que sean menores de 95 y tomados el mes 9

SELECT m.Nombre, ROUND(AVG(r.Registro),2) AS "Promedio de pasos"
FROM Registros_Pasos r
JOIN Mascotas m ON r.ID_Mascota = m.ID_Mascota 
GROUP BY m.ID_Mascota;
-- La consulta devuelve el promedio de los pasos de las mascotas que tienen registros

SELECT h.Fecha, h.Titulo, h.Descripcion,
	(SELECT m.Nombre FROM Mascotas m WHERE m.ID_Mascota = h.ID_Mascota) AS Mascota
FROM Historial_Medico h
WHERE YEAR(Fecha)=2023;
-- La consulta devuelve los historiales medicos del año 2023

SELECT m.Nombre, AVG(h.Registro) AS"Promedio Cardiaco"
FROM Mascotas m
JOIN Registros_Cardiacos h ON m.ID_Mascota = h.ID_Mascota
GROUP BY m.ID_Mascota
HAVING AVG(h.Registro) > (
    SELECT AVG(Registro)
    FROM Registros_Cardiacos
);
-- La consulta devuelve las mascotas que tienen un promedio mayor al promedio general

SELECT v.Vacuna, 
	(SELECT COUNT(ID_Vacuna) FROM Historial_Vacunas h WHERE h.ID_Vacuna = v.ID_Vacuna) AS "Vacunas Aplicadas"
FROM Vacunas v;
-- La consulta devuelve el total de vacunas aplicadas a las mascotas

SELECT p.Nombre,  p.Precio_Venta
FROM Productos p WHERE Precio_Venta < 15000;
-- La consulta devuelve los productos que cuestan menos de 15000

SELECT p.Nombre,
	(SELECT i.Cantidad FROM Inventario i WHERE p.ID_Producto = i.ID_Producto AND i.Cantidad <30) AS Stock
FROM Productos p;
-- La consulta muestra el stock de los productos menores a una cantidad

SELECT t.ID_Ticket, t.Titulo,t.Fecha_Creacion, t.Fecha_Cierre , DATEDIFF(Fecha_Cierre, Fecha_Creacion) AS 'Tiempo de Respuesta'
FROM Tickets t
WHERE Fecha_Cierre IS NOT NULL;
-- La consulta devuelve el tiempo que se demoro en cerrarse el ticket

SELECT p.Nombre, p.Descripcion,t.Nombre AS Tipo, p.Costo, p.Precio_Venta, pr.Nombre AS Nombre_Proveedor
FROM Productos p
JOIN ProveedoresProductos pp ON p.ID_Producto = pp.productos_ID_Producto
JOIN Proveedores pr ON pp.proveedores_ID_Proveedor = pr.ID_Proveedor
JOIN TiposProductos t ON p.ID_TipoProducto = t.ID_TipoProducto
WHERE p.ID_Producto = 1;
-- La consulta devuelve la informacion de un producto y sus proveedores

SELECT m.ID_Mantenimiento, m.Fecha_Mantenimiento,  e.Nombre_Estado
FROM Mantenimiento m
JOIN Estados e ON m.ID_Estado_Mantenimiento = e.ID_Estado 
WHERE m.ID_Estado_Mantenimiento = 2;
-- La consulta devuelve los mantenimientos en progreso

SELECT e.Nombre, e.Correo, e.Fecha_Contratacion AS "Fecha_Contratacion", 
    CONCAT(ROUND(TIMESTAMPDIFF(MONTH, e.Fecha_Contratacion, CURDATE()) / 12, 2), ' Años') AS Duracion
FROM Empleados e
WHERE e.Estado = 1;
-- La consulta devuelve la duracion que llevan trabajando

SELECT e.Nombre, e.Correo, p.Nombre AS Puesto
FROM Empleados e
JOIN Puestos p ON e.ID_Puesto = p.ID_Puesto
WHERE p.Nombre = 'Técnico de Soporte';
-- La consulta devuelve todos los tecnicos

SELECT e.Nombre, e.Correo, e.Telefono
FROM Empleados e
WHERE e.Estado = 0;
-- La consulta devuelve los usuarios inactivos

SELECT u.Nombre, v.Titulo, v.Contenido, v.Fecha 
FROM Usuarios u
LEFT JOIN Valoraciones v ON u.ID_Usuario = v.ID_Usuario;
-- La consulta devuelve todos los usuarios y sus valoraciones

SELECT u.Nombre, v.Titulo, v.Contenido, v.Fecha, c.Nombre AS Calificacion
FROM Usuarios u
JOIN Valoraciones v ON u.ID_Usuario = v.ID_Usuario
JOIN Calificaciones c ON v.ID_Calificacion = c.ID_Calificacion
WHERE v.ID_Calificacion = 2;
-- La consulta devuelve las valoraciones regulares

SELECT c.Nombre, COUNT(v.ID_Calificacion) AS 'Mayor Calificacion'
FROM Calificaciones c
JOIN Valoraciones v ON c.ID_Calificacion = v.ID_Calificacion
GROUP BY c.Nombre
LIMIT 1;
-- La consulta devuelve la calificacion mas recurrente 

SELECT v.ID_Venta, i.Nombre as producto, v.Cantidad
FROM Ventas_Producto v
JOIN Productos i ON i.ID_Producto = v.ID_Producto
WHERE ID_Venta = 1;
-- Devuelve los productos en una venta especifica

SELECT v.Fecha, I.Nombre AS 'Metodo de Pago', n.Nombre
FROM Ventas v
JOIN Usuarios n ON v.ID_Usuario = n.ID_Usuario
JOIN Metodo_Pago I ON I.ID_Metodo_Pago= v.ID_Metodo_Pago
WHERE MONTH(v.Fecha) = 10 AND DAY(v.Fecha) BETWEEN 1 AND 5;
-- La consulta devuelve las ventas hechas un rango de fecha

SELECT v.Fecha, SUM(ve.Cantidad) AS 'Productos vendidos'
FROM Ventas v
JOIN ventas_producto ve ON v.ID_Venta = ve.ID_Venta
WHERE Fecha < '2024-09-16'
GROUP BY v.Fecha;
-- La consulta devuelve la cantidad de productos vendidos en un rango de fecha

SELECT u.Nombre, SUM(p.Precio_Venta * vp.Cantidad) AS Total_Ventas
FROM Ventas v
JOIN Usuarios u ON u.ID_Usuario = v.ID_Usuario
JOIN Ventas_Producto vp ON v.ID_Venta = vp.ID_Venta  
JOIN Productos p ON vp.ID_Producto = p.ID_Producto
GROUP BY u.Nombre;
-- La consulta devuelve el total gastado por un usuario en todas las ventas

SELECT AVG(Total) AS 'Promedio de gastos'
FROM (
    SELECT SUM(p.Precio_Venta * vp.Cantidad) AS Total
    FROM Ventas v
    JOIN Ventas_Producto vp ON v.ID_Venta = vp.ID_Venta
    JOIN Productos p ON vp.ID_Producto = p.ID_Producto
    GROUP BY v.ID_Usuario
) AS Gastos;
-- Devuelve los gastos en total del sistema

SELECT e.Nombre AS Empleado, t.Titulo AS Ticket, Fecha_Creacion, u.Nombre AS Usuario FROM Tickets t
JOIN empleadostickets tk ON t.ID_Ticket = tk.tickets_ID_Ticket
JOIN empleados e ON tk.empleados_ID_Empleado = e.ID_Empleado
JOIN Usuarios u ON t.ID_Usuario = u.ID_Usuario;
-- La consulta devuelve los tickets q estan a cargo cada empleado

SELECT MONTHNAME(Fecha) AS Mes, COUNT(*) AS Compras
FROM Ventas
GROUP BY MONTH(Fecha), MONTHNAME(Fecha)
ORDER BY Compras DESC
LIMIT 3;
-- La consulta devuelve los 3 primeros meses donde hubo mayor compras 

SELECT p.Nombre, p.Precio_Venta - p.Costo AS 'Ganancia por producto'
FROM Productos p;
-- La consulta devuelve la ganancia que se obtiene por producto

SELECT p.Nombre, COUNT(*) AS  'Productos Disponibles'
FROM Proveedores p
JOIN ProveedoresProductos pp ON p.ID_Proveedor = pp.proveedores_ID_Proveedor
GROUP BY p.Nombre
ORDER BY Nombre DESC;
-- La consulta devuelve los productos q venden o suerten cada proveedor

SELECT m.Nombre, COUNT(hm.ID_Registro_Historial) AS Visitas
FROM Mascotas m
LEFT JOIN Historial_Medico hm ON m.ID_Mascota = hm.ID_Mascota
GROUP BY m.Nombre
ORDER BY Visitas DESC;
-- Devuelve la cantidad de visitas al veterinaria que tienen las mascotas

SELECT p.Nombre, SUM(vp.Cantidad) AS Cantidad_Vendida
FROM Ventas_Producto vp
JOIN Productos p ON vp.ID_Producto = p.ID_Producto
JOIN Ventas v ON vp.ID_Venta = v.ID_Venta
WHERE v.Fecha BETWEEN '2024-09-01' AND '2024-10-31'
GROUP BY p.Nombre
ORDER BY Cantidad_Vendida DESC;
-- La consulta devuelve la cantidad de productos vendidos en un rango de fecha

SELECT u.Nombre 
FROM Usuarios u
JOIN Ventas v ON u.ID_Usuario = v.ID_Usuario
WHERE v.Fecha BETWEEN CURDATE() - INTERVAL 6 MONTH AND CURDATE()
GROUP BY u.Nombre
HAVING COUNT(*)> 1;
-- La consulta devuelve clientes que han comprado más de 1 productos en el último semestre

SELECT d.Nombre,
    (SELECT ROUND(AVG(p.Precio_Base), 2) FROM Puestos p WHERE d.ID_Departamento = p.ID_Departamento) AS Promedio_Sueldo
FROM Departamentos d
ORDER BY Promedio_Sueldo ASC;
-- La consulta devuelve el promedio de los sueldos por departamento

SELECT e.Nombre, p.Nombre AS Puesto, d.Nombre AS Departamento, p.Precio_Base AS Salario, pg.Fecha_Pago AS 'Fecha de Pago'
FROM Departamentos d
JOIN Puestos p ON d.ID_Departamento = p.ID_Departamento
JOIN Empleados e ON e.ID_Puesto = p.ID_Puesto
JOIN Pagos pg ON e.ID_Empleado = pg.ID_Empleado;
-- La consulta devuelve la informacion de pagos de empleados con sus puestos y el departamento que pertenece


SELECT s.Nombre, COUNT(m.ID_Servicio) AS Cantidad
FROM servicios_mantenimiento s
LEFT JOIN mantenimiento m ON m.ID_Servicio = s.ID_Servicio
GROUP BY s.Nombre
HAVING COUNT(m.ID_Servicio) = 0;
-- La consulta devuelve los servicios de mantenimiento que no han sido usado

SELECT Nombre, Hora_Apertura, Hora_Cierre,
	CONCAT(HOUR(TIMEDIFF(Hora_Cierre, Hora_Apertura)), ' Horas') AS Duracion
FROM Veterinarias;
-- La consulta devuelve la duracion de las veterinarias abiertas
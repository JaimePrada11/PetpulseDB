<p  align="center">  <h1  align="center">Proyecto SQL </h1>  </p>
<h1  align="center">Jaime Prada </h1>
<h1  align="center">Alejandro Rincon </h1>
   <p align="center">
	   <p align="center">
	<img src="https://img.shields.io/github/license/AlejandroRinconPerez/CV-Practica?style=flat&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/AlejandroRinconPerez/CV-Practica?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/AlejandroRinconPerez/CV-Practica?style=flat&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/AlejandroRinconPerez/CV-Practica?style=flat&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
		<em>Herramientas de Desaroolo Utilizadas.</em>
</p>
<p align="center">
	
  
 <img src="https://banner2.cleanpng.com/20180526/oqt/avq6683ud.webp" alt="HTML5" width="400">
  
</p>

## 🔗 indice

| Indice | Titulo  |
|--|--|
| 📍 | Analisis inicial |
| 📦 | Tablas SQL  |
| 🧩 | Datos DML |
| 🤝 |LLamados|


## 📍 Analisis inicial
Problema:

Los animales enfermos o recién operados requieren chequeos médicos frecuentes. Sin embargo, los métodos tradicionales de revisión manual por parte de auxiliares veterinarios no garantizan un monitoreo continuo. Esto puede llevar a que se pasen por alto síntomas importantes, poniendo en riesgo la vida de la mascota.

Soluciones propuestas:

Se han planteado tres tecnologías para solucionar este problema:

Chip de salud implantable: Un pequeño dispositivo colocado bajo la piel de la mascota que monitorea signos vitales como el ritmo cardíaco, presión arterial y niveles de oxígeno en sangre.
Dispositivo portátil: Un parche que se adhiere al cuerpo del animal y mide el ritmo cardíaco, respiración y niveles de estrés.
Collar inteligente: Un collar con sensores que monitorea el ritmo cardíaco, temperatura, niveles de oxígeno y actividad física.
Objetivo de las soluciones:

Estas tecnologías buscan proporcionar un monitoreo constante y preciso de la salud de las mascotas, permitiendo una detección temprana de cualquier problema y una respuesta rápida por parte del veterinario. Esto es especialmente importante en animales enfermos o en recuperación postoperatoria, donde cualquier cambio en su estado de salud puede ser crítico.

En resumen, se busca mejorar la atención veterinaria a través de dispositivos tecnológicos que permitan un seguimiento continuo de la salud de las mascotas, reduciendo el riesgo de complicaciones y asegurando una mejor calidad de vida para los animales.


## 📦 Tablas SQL  
ACa mostraremos algunas de las tablas el consolidado de las tablas esta en el Archivo DDL segun lo estipilado
```- CREACION BASE DE DATOS



CREATE DATABASE IF NOT EXISTS petpulseDB;

USE petpulseDB;

--Creacion de Tabla Pais 

CREATE TABLE  IF NOT EXISTS Pais ( 
    ID_Pais INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Pais VARCHAR(100) UNIQUE NOT NULL 
);
--Creacion de Tabla 

CREATE TABLE IF NOT EXISTS Ciudad(
    ID_Ciudad INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Ciudad VARCHAR(100) NOT NULL,
    ID_Pais INT NOT NULL,
    FOREIGN KEY (ID_Pais) REFERENCES Pais(ID_Pais)
);

--Creacion Veterinarios 
 CREATE TABLE IF NOT EXISTS Veterinarios(
    ID_Veterinario INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) UNIQUE NOT NULL,
    Ubicacion VARCHAR(100) NOT NULL
 );

 --Creacion Tabla Usuarios 
 CREATE TABLE IF NOT EXISTS Usuarios(
    ID_Usuario INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Apellido VARCHAR (100) NOT NULL,
    Direccion VARCHAR(100), 
    Telefono VARCHAR(250),
    Correo VARCHAR(100) UNIQUE NOT NULL,
    ID_Ciudad INT NOT NULL,
     FOREIGN KEY(ID_Ciudad) REFERENCES Ciudad(ID_Ciudad)
 );
 --Creacion Tabla Mascotas 
SET SQL_SAFE_UPDATES = 0;

 CREATE TABLE IF NOT EXISTS Mascotas(
    ID_Mascota  INT PRIMARY KEY AUTO_INCREMENT,
    Raza VARCHAR(100),
    Peso INT NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Genero VARCHAR(50),
    Descripcion VARCHAR(350),
    ID_Usuario INT NOT NULL, 
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario)
 );
 --Aca Empezamos con los Registros de Mascotas
 --Tabla Historial Medico 

  CREATE TABLE IF NOT EXISTS Historial_Medico(
    ID_Registro_Historial INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Titulo VARCHAR(150) NOT NULL,
    Descripcion VARCHAR (350) NOT NULL,
    ID_Mascota INT NOT NULL, 
     FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );  
  --Historial de Vacunacion
    CREATE TABLE IF NOT EXISTS Historial_Vacunas(
    ID_Historial_Vacunas INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Titulo VARCHAR(150) NOT NULL,
    Descripcion VARCHAR (350) NOT NULL,
    ID_Mascota INT NOT NULL, 
     FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );  
  --Historial de Registro de Medicamentos
   CREATE TABLE IF NOT EXISTS Registro_Medicamentos(
    ID_Registro_Medicamentos INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Titulo VARCHAR(150) NOT NULL,
    Descripcion VARCHAR (350) NOT NULL,
    ID_Mascota INT NOT NULL, 
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );  
  --Creacion de Tabla de Registro Cardiacos

  CREATE TABLE IF NOT EXISTS Registros_Cardiacos(
    ID_Registro_Cardiaco INT PRIMARY KEY AUTO_INCREMENT, 
    Registro FLOAT NOT NULL,
    Fecha DATETIME NOT NULL,  
    ID_Mascota INT NOT NULL,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );
  --CREACCION Tabla Oxigeno 
    CREATE TABLE IF NOT EXISTS Registros_Oxigeno(
    ID_Registros_Oxigeno INT PRIMARY KEY AUTO_INCREMENT, 
    Registro FLOAT NOT NULL,
    Fecha DATETIME NOT NULL,  
    ID_Mascota INT NOT NULL,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );
``` 


## 🧩 Datos DML 
Datos agregados usando GPT  
```
USE petpulsedb;
INSERT IGNORE INTO Pais (Nombre_Pais) VALUES
('Colombia'),
('Argentina'),
('Perú'),
('Ecuador'),
('Brasil');

USE petpulsedb;

INSERT IGNORE INTO Ciudad (Nombre_Ciudad, ID_Pais) VALUES
('Bogotá', 1),
('Medellín', 1),
('Buenos Aires', 2),
('Córdoba', 2),
('Lima', 3),
('Cusco', 3),
('Quito', 4),
('Guayaquil', 4),
('Río de Janeiro', 5),
('São Paulo', 5);


USE petpulsedb;

INSERT IGNORE INTO Veterinarios (Nombre, Ubicacion) VALUES
-- Veterinarios en Bogotá
('PetCare Bogotá', 'Calle 123 #45-67, Bogotá'),
('SaludAnimal Bogotá', 'Carrera 45 #67-89, Bogotá'),
('Huellitas Bogotá', 'Avenida Siempre Viva #12-34, Bogotá'),

-- Veterinarios en Buenos Aires
('Clínica Vet Buenos Aires', 'Avenida Santa Fe 1234, Buenos Aires'),
('VetHome Buenos Aires', 'Calle Florida 5678, Buenos Aires'),
('Veterinaria La Mascota BA', 'Calle Corrientes 3456, Buenos Aires'),

-- Veterinarios en Lima
('Veterinaria Perú Animal', 'Avenida Larco 123, Lima'),
('Clínica Mascotas Felices', 'Jirón Pizarro 456, Lima'),
('Veterinaria San Marcos', 'Avenida Grau 789, Lima'),

-- Veterinarios en Quito
('Clínica Animal Quito', 'Avenida Amazonas 123, Quito'),
('Huellitas de Amor Quito', 'Calle 6 de Diciembre 456, Quito'),
('VetPlus Quito', 'Calle Eloy Alfaro 789, Quito'),

-- Veterinarios en Río de Janeiro
('Clínica Animal RJ', 'Rua das Laranjeiras 123, Río de Janeiro'),
('VetCare Brasil RJ', 'Avenida Atlântica 456, Río de Janeiro'),
('Amigos Peludos RJ', 'Rua Barata Ribeiro 789, Río de Janeiro');

```




## 🤝 |LLamados

<img src="https://www.shutterstock.com/image-vector/class-diagram-uml-unified-modeling-260nw-327580805.jpg" alt="HTML5" width="400">

```
Lo usamos para decirle sobre que base de datos Trabajar
USE Petpulsedb;

```

### Lista de las ciudades y el país

```
ELECT p.Nombre_Pais AS Pais, c.Nombre_Ciudad AS Ciudad
FROM Ciudad c
JOIN Pais p ON c.ID_Pais = p.ID_Pais
ORDER BY p.Nombre_Pais;
-- La consulta devuelve el nombre de cada ciudad y el pais al que pertencen ordenados por el pais
```

### Cantidad de ciudades por país

```
SELECT Nombre_Pais,
	(SELECT COUNT(*) FROM Ciudad WHERE Ciudad.ID_Pais = Pais.ID_Pais) AS 'Ciudades por pais'
FROM Pais;
-- La consulta devuelve la cantidad de ciudades que hay en cada pais
```

### Lista de las Ciudades de Colombia

```
SELECT p.Nombre_Pais, c.Nombre_Ciudad
FROM Pais p
JOIN Ciudad c ON c.ID_Pais = p.ID_Pais
WHERE Nombre_Pais = 'Colombia'
ORDER BY Nombre_Ciudad ASC ;
-- La consulta devuelve todas las ciudades que hay en colombia ordenados alfabeticamente

```
### Las veterinarias en más de una ciudad

```
SELECT v.Nombre, COUNT(DISTINCT vc.ciudad_ID_Ciudad) AS "Cantidad de ciudades"
FROM Veterinarios v
JOIN ciudadveterinarios vc ON v.ID_Veterinario = vc.veterinarios_ID_Veterinario
GROUP BY v.ID_Veterinario, v.Nombre
HAVING COUNT(DISTINCT vc.ciudad_ID_Ciudad) > 2;
-- La consulta devuelve las veterinarias que se encuentran en mas de 2 ciudades
```
### Cantidad de usuarios por ciudad

```
SELECT Nombre, Apellido, Direccion, Telefono, Correo FROM Usuarios
WHERE Nombre LIKE 'a%'
ORDER BY Apellido ASC;
-- La consulta devuelve los usuarios que comienzan con a
```

### Lista de perros mayores a 3 años

```
SELECT Nombre, Fecha_Nacimiento AS "Fecha de Nacimiento",
    DATEDIFF(CURDATE(), Fecha_Nacimiento) DIV 365 AS Edad
FROM Mascotas
WHERE  DATEDIFF(CURDATE(), Fecha_Nacimiento) DIV 365 > 3
ORDER BY Edad ASC;
-- La consulta devuelve todas las mascotas mayores de 3 años
```

###  Promedio de sueño de todas las mascotas 

```
SELECT ROUND(AVG(Registro),2) AS 'Promedio Sueño' FROM Registros_Sueno;
-- La consulta muestra el promedio de sueño de todas las mascotas
```
### Promedio del peso por la razas de mascotas

 ```
SELECT r.Nombre_Raza, ROUND(AVG(m.Peso),2) AS 'Promedio de Peso'
FROM Razas r
JOIN Mascotas m ON r.ID = m.ID_Raza
GROUP BY r.Nombre_Raza;
-- La consulta devuelve el promedio de peso por razas
```

###  Lista de las mascotas de sexo/genero hembra

```
SELECT m.ID_Mascota, m.Nombre, m.Genero , r.Nombre_Raza as Raza
FROM Mascotas m
JOIN Razas r ON m.ID_Raza = r.ID 
WHERE m.Genero = "Hembra"
ORDER BY m.ID_Mascota ASC ;
```
### Registros de oximetría menores a 95 tomados a las 10am
```
SELECT Registros_Oxigeno.Registro, Registros_Oxigeno.Fecha, m.Nombre AS "Nombre mascota" FROM Registros_Oxigeno 
JOIN Mascotas m ON m.ID_Mascota = Registros_Oxigeno.ID_Registros_Oxigeno
WHERE Registro < 95 AND HOUR(Fecha)=10;
-- La consulta devuelve los registros de oximetria que sean menores de 95 y tomados a las 10
```
### Promedio de pasos de mascotas con registro

```
SELECT m.Nombre, ROUND(AVG(r.Registro),2) AS "Promedio de pasos"
FROM Registros_Pasos r
JOIN Mascotas m ON r.ID_Mascota = m.ID_Mascota 
GROUP BY m.ID_Mascota;
-- La consulta devuelve el promedio de los pasos de las mascotas que tienen registros
```

### Historiales médicos del 2023
```
SELECT h.Fecha, h.Titulo, h.Descripcion,
	(SELECT m.Nombre FROM Mascotas m WHERE m.ID_Mascota = h.ID_Mascota) AS Mascota
FROM Historial_Medico h
WHERE YEAR(Fecha)=2023;
-- La consulta devuelve los historiales medicos del año 2023
```

### Mascotas con promedio mayor al general de cardio
```
SELECT m.Nombre, AVG(h.Registro) AS"Promedio Cardiaco"
FROM Mascotas m
JOIN Registros_Cardiacos h ON m.ID_Mascota = h.ID_Mascota
GROUP BY m.ID_Mascota
HAVING AVG(h.Registro) > (
    SELECT AVG(Registro)
    FROM Registros_Cardiacos
);
-- La consulta devuelve las mascotas que tienen un promedio mayor al promedio general
```

### Total de vacunas aplicadas por tipo
```
SELECT v.Vacuna, 
	(SELECT COUNT(ID_Vacuna) FROM Historial_Vacunas h WHERE h.ID_Vacuna = v.ID_Vacuna) AS "Vacunas Aplicadas"
FROM Vacunas v;
-- La consulta devuelve el total de vacunas aplicadas a las mascotas
```

### Productos que valor menor a 25000
```SELECT p.Nombre, p.Descripcion 
FROM Productos p WHERE Precio_Venta < 15000;
-- La consulta devuelve los productos que cuestan menos de 15000
```

### El stock de productos en un rango de cantidad
```
SELECT p.Nombre,
	(SELECT i.Cantidad FROM Inventario i WHERE p.ID_Producto = i.ID_Producto) AS Stock
FROM Productos p;
-- La consulta muestra el stock de los productos
```
### Tiempo de duración en cerrar tickets
```
SELECT t.ID_Ticket, t.Titulo,t.Fecha_Creacion, t.Fecha_Cierre , DATEDIFF(Fecha_Cierre, Fecha_Creacion) AS 'Tiempo de Respuesta'
FROM Tickets t
WHERE Fecha_Cierre IS NOT NULL;
-- La consulta devuelve el tiempo que se demoro en cerrarse el ticket
```

### Lista de un producto y sus proveedores
```
SELECT p.*, pr.Nombre AS Nombre_Proveedor
FROM Productos p
JOIN ProveedoresProductos pp ON p.ID_Producto = pp.productos_ID_Producto
JOIN Proveedores pr ON pp.proveedores_ID_Proveedor = pr.ID_Proveedor
WHERE p.ID_Producto = 1;
-- La consulta devuelve la informacion de un producto y sus proveedores
```

### Mantenimientos completados

```
SELECT m.ID_Mantenimiento, m.Fecha_Mantenimiento,  e.Nombre_Estado
FROM Mantenimiento m
JOIN Estado_Mantenimiento e ON m.ID_Estado_Mantenimiento = e.ID_Estado_Mantenimiento 
WHERE m.ID_Estado_Mantenimiento = 3;
-- La consulta devuelve los mantenimientos completados
```
### La duración de tiempo trabajando
```SELECT e.Nombre, e.Apellido, e.Correo, e.Fecha_Contratacion AS "Fecha_Contratacion", 
       ROUND(TIMESTAMPDIFF(MONTH, e.Fecha_Contratacion, CURDATE()) / 12,2) AS Duracion
FROM Empleados e
WHERE Estado="Activo";
-- La consulta devuelve la duracion que llevan trabajando
```
### Lista de Tecnicos 

``` SELECT e.Nombre, e.Apellido, e.Correo, p.Nombre AS Puesto
FROM Empleados e
JOIN Puestos p ON e.ID_Puesto = p.ID_Puesto
WHERE e.Estado = 'Activo' AND p.Nombre = 'Técnico de Soporte';
```

### Empleados inactivos
```
SELECT e.Nombre, e.Apellido, e.Correo
FROM Empleados e
WHERE e.Estado = 'Inactivo';
-- La consulta devuelve los usuarios inactivos
```
### Las valoraciones por usuario
```SELECT u.Nombre, u.Apellido, v.Titulo, v.Contenido, v.Fecha 
FROM Usuarios u
LEFT JOIN Valoraciones v ON u.ID_Usuario = v.ID_Usuario;
-- La consulta devuelve todos los usuarios y sus valoraciones
```

### Valoraciones negativas con comentarios
```
SELECT u.Nombre, u.Apellido, v.Titulo, v.Contenido, v.Fecha 
FROM Usuarios u
JOIN Valoraciones v ON u.ID_Usuario = v.ID_Usuario
WHERE v.ID_Calificacion = 2;
-- La consulta devuelve las valoraciones negativas
```
### Devuelve los productos en una venta especifica

```

SELECT v.Fecha, I.Nombre AS 'Metodo de Pago', n.Nombre, n.Apellido
FROM Ventas v
JOIN Usuarios n ON v.ID_Usuario = n.ID_Usuario
JOIN Transaccion t ON t.ID_Transaccion = v.ID_Transaccion
JOIN Metodo_Pago I ON I.ID_Metodo_Pago= t.ID_Metodo_Pago
WHERE MONTH(v.Fecha) = 9 AND DAY(v.Fecha) BETWEEN 1 AND 5;
-- La consulta devuelve las ventas hechas un rango de fecha
```
### Ventas hechas en un rango de tiempo
```
SELECT v.Fecha, I.Nombre AS 'Metodo de Pago', n.Nombre, n.Apellido
FROM Ventas v
JOIN Usuarios n ON v.ID_Usuario = n.ID_Usuario
JOIN Transaccion t ON t.ID_Transaccion = v.ID_Transaccion
JOIN Metodo_Pago I ON I.ID_Metodo_Pago= t.ID_Metodo_Pago
WHERE MONTH(v.Fecha) = 9 AND DAY(v.Fecha) BETWEEN 1 AND 5;
-- La consulta devuelve las ventas hechas un rango de fecha
```
### Los productos más vendidos en un tiempo

```
SELECT v.Fecha, SUM(ve.Cantidad) AS 'Productos vendidos'
FROM Ventas v
JOIN ventas_producto ve ON v.ID_Venta = ve.ID_Venta
WHERE Fecha < '2024-09-16'
GROUP BY v.Fecha;
-- La consulta devuelve la cantidad de productos vendidos en un rango de fecha
```

### Total gastado por usuario en todas las ventas
```
SELECT u.Nombre, SUM(p.Precio_Venta * vp.Cantidad) AS Total_Ventas
FROM Ventas v
JOIN Usuarios u ON u.ID_Usuario = v.ID_Usuario
JOIN Ventas_Producto vp ON v.ID_Venta = vp.ID_Venta  
JOIN Productos p ON vp.ID_Producto = p.ID_Producto
GROUP BY u.Nombre;
-- La consulta devuelve el total gastado por un usuario en todas las ventas
```

### El promedio de los gastos de todo

```
SELECT AVG(Total) AS 'Promedio de gastos'
FROM (
    SELECT SUM(p.Precio_Venta * vp.Cantidad) AS Total
    FROM Ventas v
    JOIN Ventas_Producto vp ON v.ID_Venta = vp.ID_Venta
    JOIN Productos p ON vp.ID_Producto = p.ID_Producto
    GROUP BY v.ID_Usuario
) AS Gastos;
--
```
### El mes con mayores ventas
```
SELECT MONTH(Fecha) AS Mes, COUNT(*) AS 'Compras'
FROM Ventas
GROUP BY MONTH(Fecha)
ORDER BY Compras DESC
LIMIT 1;
```

### Ganancias por productos
``` SELECT p.Nombre, p.Precio_Venta - p.Costo AS Margen_Ganancia
FROM Productos p;
-- La consulta devuelve la ganancia que se obtiene por producto

```
### Visitas a veterinario por mascotas
```
SELECT m.Nombre, COUNT(*) AS Visitas_Veterinarias
FROM Mascotas m
JOIN Historial_Medico hm ON m.ID_Mascota = hm.ID_Mascota
GROUP BY m.Nombre
ORDER BY Visitas_Veterinarias DESC;
```
### Promedio de salarios de la empresa
```
SELECT p.Nombre, SUM(vp.Cantidad) AS Cantidad_Vendida
FROM Ventas_Producto vp
JOIN Productos p ON vp.ID_Producto = p.ID_Producto
JOIN Ventas v ON vp.ID_Venta = v.ID_Venta
WHERE v.Fecha BETWEEN '2024-09-01' AND '2024-10-31'
GROUP BY p.Nombre
ORDER BY Cantidad_Vendida DESC;
-- La consulta devuelve la cantidad de productos vendidos en un rango de fecha
```



































CREATE DATABASE IF NOT EXISTS PetpulseDB;
USE PetpulseDB;

-- Creacion de Tabla Pais 
CREATE TABLE  IF NOT EXISTS Pais ( 
    ID_Pais INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Pais VARCHAR(100) UNIQUE NOT NULL 
);

-- Creacion de la tabla ciudad
CREATE TABLE IF NOT EXISTS Ciudad(
    ID_Ciudad INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Ciudad VARCHAR(100) NOT NULL,
    ID_Pais INT NOT NULL,
    FOREIGN KEY (ID_Pais) REFERENCES Pais(ID_Pais)
);

-- Creacion de la tabla Veterinarios
CREATE TABLE IF NOT EXISTS Veterinarias(
    ID_Veterinario INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) UNIQUE NOT NULL,
    Correo VARCHAR(100) NOT NULL UNIQUE,
    Telefono VARCHAR(10) NOT NULL UNIQUE,
    Hora_Apertura TIME NOT NULL,
    Hora_Cierre TIME NOT NULL
 );
 
 -- Tabla intemedia ciudadveterinaria
 CREATE TABLE IF NOT EXISTS CiudadVeterinaria (
	ciudad_ID_Ciudad INT NOT NULL,
	veterinarias_ID_Veterinario INT NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
	PRIMARY KEY (ciudad_ID_Ciudad, veterinarias_ID_Veterinario),
    FOREIGN KEY (ciudad_ID_Ciudad) REFERENCES Ciudad(ID_Ciudad),
    FOREIGN KEY (veterinarias_ID_Veterinario) REFERENCES veterinarias(ID_Veterinario)
    );
 
 -- Creacion de la tabla Usuarios
 CREATE TABLE IF NOT EXISTS Usuarios(
    ID_Usuario INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Direccion VARCHAR(100), 
    Telefono VARCHAR(250) NOT NULL UNIQUE,
    Correo VARCHAR(100) UNIQUE NOT NULL,
    ID_Ciudad INT NOT NULL,
	FOREIGN KEY(ID_Ciudad) REFERENCES Ciudad(ID_Ciudad)
 );
 
 -- Tabla Razas
 CREATE TABLE IF NOT EXISTS Razas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Raza VARCHAR(25) NOT NULL UNIQUE
);

-- Tabla Mascotas
CREATE TABLE IF NOT EXISTS Mascotas(
	ID_Mascota INT PRIMARY KEY AUTO_INCREMENT,
	Nombre VARCHAR(20) NOT NULL,
	ID_Raza INT NOT NULL,
	Fecha_Nacimiento DATE NOT NULL,
	Peso FLOAT NOT NULL,
	Genero ENUM("Macho", "Hembra"),
	ID_Usuario INT NOT NULL,
	FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
	FOREIGN KEY (ID_Raza) REFERENCES Razas(ID)
);

-- HISTORIALES DE LA MASCOTA

-- -- Historial Medico
  CREATE TABLE IF NOT EXISTS Historial_Medico(
    ID_Registro_Historial INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Titulo VARCHAR(150) NOT NULL,
    Descripcion VARCHAR (350) NOT NULL,
    ID_Mascota INT NOT NULL, 
	FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );  

-- Tabla de vacunas
CREATE TABLE IF NOT EXISTS Vacunas(
	ID_Vacuna INT PRIMARY KEY AUTO_INCREMENT,
    Vacuna  VARCHAR(150) NOT NULL
);

-- Historial Vacunacion
    CREATE TABLE IF NOT EXISTS Historial_Vacunas(
    ID_Historial_Vacuna INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    ID_Vacuna INT NOT NULL,
    Descripcion VARCHAR(350) NOT NULL,
    ID_Mascota INT NOT NULL, 
	FOREIGN KEY (ID_Vacuna) REFERENCES Vacunas(ID_Vacuna),
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );
  
  CREATE TABLE IF NOT EXISTS Medicamentos(
	ID_TipoMedicamento INT PRIMARY KEY AUTO_INCREMENT,
    Mecicamento VARCHAR(30) NOT NULL,
    Frecuencia VARCHAR(100) NOT NULL
  );
  
  -- Historial Medicamentos
   CREATE TABLE IF NOT EXISTS Registro_Medicamentos(
    ID_Registro_Medicamentos INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    ID_TipoMedicamento INT NOT NULL,
    ID_Mascota INT NOT NULL, 
	FOREIGN KEY (ID_TipoMedicamento) REFERENCES Medicamentos(ID_TipoMedicamento),
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );  
  
  -- Registros Cardiacos
 CREATE TABLE IF NOT EXISTS Registros_Cardiacos(
    ID_Registro_Cardiaco INT PRIMARY KEY AUTO_INCREMENT, 
    Registro FLOAT NOT NULL,
    Fecha DATETIME NOT NULL,  
    ID_Mascota INT NOT NULL,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );
  
  -- Registros de Oximetria
  CREATE TABLE IF NOT EXISTS Registros_Oxigeno(
    ID_Registros_Oxigeno INT PRIMARY KEY AUTO_INCREMENT, 
    Registro FLOAT NOT NULL,
    Fecha DATETIME NOT NULL,  
    ID_Mascota INT NOT NULL,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );

-- Registros del sueño
   CREATE TABLE IF NOT EXISTS Registros_Sueno(
    ID_Registros_Sueno INT PRIMARY KEY AUTO_INCREMENT, 
    Registro FLOAT NOT NULL,
    Fecha DATETIME NOT NULL,  
    ID_Mascota INT NOT NULL,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );

-- Tabla Registro Pasos 
  CREATE TABLE IF NOT EXISTS Registros_Pasos(
    ID_Registros_Paso INT PRIMARY KEY AUTO_INCREMENT, 
    Registro FLOAT NOT NULL,
    Fecha DATETIME NOT NULL,  
    ID_Mascota INT NOT NULL,
    FOREIGN KEY (ID_Mascota) REFERENCES Mascotas(ID_Mascota)
  );
  
-- OPINION O VALORACION DEL USUARIO

-- Tabla del calificaciones
 CREATE TABLE IF NOT EXISTS Calificaciones(
    ID_Calificacion INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(200) NOT NULL
  );
  
  -- Valoraciones 
  CREATE TABLE IF NOT EXISTS Valoraciones (
    ID_Valoracion INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(120) NOT  NULL, 
    Contenido TEXT NOT NULL, 
    Fecha DATE NOT NULL, 
    ID_Calificacion INT NOT NULL, 
    ID_Usuario INT NOT NULL, 
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Calificacion) REFERENCES Calificaciones(ID_Calificacion)
  );
  
  --  TRANSACCIONES 
  
  -- Metodos de pagos
  CREATE TABLE  IF NOT EXISTS Metodo_Pago(
    ID_Metodo_Pago INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(120) NOT NULL UNIQUE
  );

-- VENTAS

-- Tabla Ventas 
  CREATE TABLE IF NOT EXISTS Ventas(
    ID_Venta INT PRIMARY KEY AUTO_INCREMENT,
	Fecha DATE NOT NULL,
    ID_Metodo_Pago INT NOT NULL,
    ID_Usuario INT NOT NULL, 
    FOREIGN KEY (ID_Metodo_Pago) REFERENCES Metodo_Pago(ID_Metodo_Pago),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario)
  );
  
  -- Tipos de Productos
  CREATE TABLE IF NOT EXISTS TiposProductos(
	ID_TipoProducto INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL
  );
  
  -- Poducto
CREATE TABLE IF NOT EXISTS Productos(
    ID_Producto INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(120) NOT NULL, 
    Descripcion VARCHAR(200),
    ID_TipoProducto INT NOT NULL,
    Costo INT NOT NULL,
    Precio_Venta INT NOT NULL,
	FOREIGN KEY (ID_TipoProducto) REFERENCES TiposProductos(ID_TipoProducto)
);

-- Tabla inventario 
CREATE TABLE IF NOT EXISTS Inventario(
    ID_inventario INT PRIMARY KEY AUTO_INCREMENT,
    Cantidad INT NOT NULL,
    ID_Producto INT NOT NULL,
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

CREATE TABLE IF NOT EXISTS Ventas_Producto (
    ID_Ventas_Producto INT PRIMARY KEY AUTO_INCREMENT,
    ID_Venta INT,
    ID_Producto INT,
    Cantidad INT NOT NULL,
    FOREIGN KEY (ID_Venta)REFERENCES Ventas(ID_Venta),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
  );
  
  -- Proveedores
  CREATE TABLE IF NOT EXISTS Proveedores(
    ID_Proveedor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Direccion VARCHAR(100) NOT NULL, 
    Telefono VARCHAR(10) NOT NULL UNIQUE,
	Correo VARCHAR(100) UNIQUE NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS ProveedoresProductos(
	proveedores_ID_Proveedor INT NOT NULL,
	productos_ID_Producto INT NOT NULL,
	PRIMARY KEY (proveedores_ID_Proveedor, productos_ID_Producto),
    FOREIGN KEY (proveedores_ID_Proveedor) REFERENCES Proveedores(ID_Proveedor),
    FOREIGN KEY (productos_ID_Producto) REFERENCES Productos(ID_Producto)
);

-- EMPLEADOS

-- DEPARTAMENTOS
CREATE TABLE  IF NOT EXISTS Departamentos(
    ID_Departamento INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(120) NOT NULL
);

-- Tabla Puestos
CREATE TABLE  IF NOT EXISTS Puestos(
    ID_Puesto INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(120) NOT NULL,
    Precio_Base DECIMAL(10,2) NOT NULL,
    ID_Departamento INT NOT NULL,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamentos(ID_Departamento)
);

-- Tabla Empleados
CREATE TABLE IF NOT EXISTS Empleados(
    ID_Empleado INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Telefono VARCHAR(10) UNIQUE NOT NULL,
    Correo VARCHAR(100) UNIQUE NOT NULL,
    Fecha_Contratacion DATE NOT NULL,
	Estado BOOLEAN DEFAULT 1,  
    ID_Puesto INT NOT NULL,
    FOREIGN KEY(ID_Puesto) REFERENCES Puestos(ID_Puesto)
 );
 
  -- Sueldos
 CREATE TABLE IF NOT EXISTS Pagos(
	ID_Pago INT PRIMARY KEY AUTO_INCREMENT,
	Fecha_Pago DATE NOT NULL,
    ID_Empleado INT NOT NULL,
	FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado)
 );
  
  -- TICKETS PQR

-- Tabla de Prioridades 
CREATE TABLE IF NOT EXISTS Prioridades (
    ID_Prioridad INT PRIMARY KEY AUTO_INCREMENT,
    Nivel VARCHAR(100) NOT NULL
);

-- Estados de los tickets
CREATE TABLE IF NOT EXISTS Estados (
    ID_Estado INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Estado VARCHAR(100) NOT NULL
);

 -- Tickets
CREATE TABLE IF NOT EXISTS Tickets (
    ID_Ticket INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(255) NOT NULL,
    Descripcion TEXT,
    Fecha_Creacion DATE NOT NULL,
    ID_Estado INT NOT NULL,
    ID_Prioridad INT NOT NULL,
    ID_Usuario INT NOT NULL, 
    Fecha_Cierre DATE NULL,
    FOREIGN KEY (ID_Estado) REFERENCES Estados(ID_Estado),
    FOREIGN KEY (ID_Prioridad) REFERENCES Prioridades(ID_Prioridad),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE IF NOT EXISTS EmpleadosTickets (
	empleados_ID_Empleado INT NOT NULL, 
	tickets_ID_Ticket INT NOT NULL,
    PRIMARY KEY(Empleados_ID_Empleado, tickets_ID_Ticket),
    FOREIGN KEY (empleados_ID_Empleado) REFERENCES Empleados(ID_Empleado),
    FOREIGN KEY (tickets_ID_Ticket) REFERENCES Tickets(ID_Ticket)
);

-- MANTENIMIENTOS

-- Servicios de Mantenimiento
CREATE TABLE IF NOT EXISTS Servicios_Mantenimiento (
    ID_Servicio INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL
);

-- Mantenimiento 
CREATE TABLE IF NOT EXISTS Mantenimiento (
    ID_Mantenimiento INT PRIMARY KEY AUTO_INCREMENT,
	Fecha_Mantenimiento DATE NOT NULL,
	ID_Ticket INT NOT NULL,
	ID_Servicio INT NOT NULL,
	ID_Estado_Mantenimiento INT NOT NULL,
	FOREIGN KEY (ID_Ticket) REFERENCES Tickets(ID_Ticket),
	FOREIGN KEY (ID_Servicio) REFERENCES Servicios_Mantenimiento(ID_Servicio),
	FOREIGN KEY (ID_Estado_Mantenimiento) REFERENCES Estados(ID_Estado)
);

-- Tabla intermedia Empleados Mantenimiento
CREATE TABLE IF NOT EXISTS empleadosmantenimiento (
	empleados_ID_Empleado INT NOT NULL, 
	mantenimiento_ID_Mantenimiento INT NOT NULL,
    PRIMARY KEY(Empleados_ID_Empleado, mantenimiento_ID_Mantenimiento),
    FOREIGN KEY (empleados_ID_Empleado) REFERENCES Empleados(ID_Empleado),
    FOREIGN KEY (mantenimiento_ID_Mantenimiento) REFERENCES Mantenimiento(ID_Mantenimiento)
);
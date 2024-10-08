--Crear la Base de Datos
CREATE DATABASE elfaro

-- Tabla para los art�culos que se publican
    CREATE TABLE Articulo ( --creacion de la tabla "ARTICULO"
    ID INT  IDENTITY(1,1) PRIMARY KEY, --un ID de articulo que comienza en 1 y se autoincrementa en 1 como llave primaria
    Titulo VARCHAR(255) NOT NULL, --un titulo para el articulo, usando un varchar (cadena de caracteres) de un largo maximo de 255 que no permite valores nulos
    Contenido TEXT NOT NULL, -- Text utilizado para almacenar cadenas de caracteres largas (el cuerpo del articulo como tal) que no acepta valores nulos
    FechaPublicacion DATETIME DEFAULT CURRENT_TIMESTAMP --forma de generar la fecha de publicacion automaticamente que con una marca de tiempo y que retorna esta marca de tiempo (CURRENT_TIMESTAMP)
);


-- Tabla para los datos de los usuarios
CREATE TABLE Usuario ( --creacion de la tabla "USUARIO"
    ID INT IDENTITY(1,1) PRIMARY KEY, --un ID de usuario que comienza en 1 y se autoincrementa en 1 como llave primaria
    NombreUsuario VARCHAR(255) NOT NULL, --un nombre de usuario, usando un varchar (cadena de caracteres) de un largo maximo de 255 que no permite valores nulos
    Contrasena VARCHAR(255) NOT NULL, --una clave del usuario, usando un varchar (cadena de caracteres) de un largo maximo de 255 que no permite valores nulos
    CorreoElectronico VARCHAR(255) NOT NULL --un correo asociado al usuario, usando un varchar (cadena de caracteres) de un largo maximo de 255 que no permite valores nulos
);


-- Tabla para el formulario de contacto
CREATE TABLE FormularioContacto ( --creacion de la tabla "FORMULARIOCONTACTO"
    ID INT  IDENTITY(1,1) PRIMARY KEY, --un ID para el formulario que comienza en 1 y se autoincrementa en 1 como llave primaria
    Nombre VARCHAR(255) NOT NULL, --nombre del usuario, usando un varchar (cadena de caracteres) de un largo maximo de 255 que no permite valores nulos
    CorreoElectronico VARCHAR(255) NOT NULL, --un correo asociado del usuario, usando un varchar (cadena de caracteres) de un largo maximo de 255 que no permite valores nulos
    Mensaje TEXT NOT NULL, -- Text utilizado para almacenar cadenas de caracteres largas (el cuerpo del articulo como tal) que no acepta valores nulos
    FechaEnvio DATETIME DEFAULT CURRENT_TIMESTAMP --forma de generar la fecha de publicacion automaticamente que con una marca de tiempo y que retorna esta marca de tiempo (CURRENT_TIMESTAMP)
);

--comando para poblar la tabla usuario a modo de ejemplo
INSERT INTO Usuario(NombreUsuario, Contrasena, CorreoElectronico)
VALUES ('sflores1975', 'anesartonC', '');

--comandos para obtener datos de los usuarios registrados en la plataforma
SELECT * FROM Usuario

--comando para poblar la tabla articulo a modo de ejemplo
INSERT INTO Articulo(Titulo, Contenido)
VALUES ('Mujer muere tras operaci�n de implantes mamarios en Puente Alto: falso doctor la atendi� a domicilio', 'Tras someterse a una cirug�a de implantes mamarios en su domicilio...');

--comandos para obtener datos de los Articulos publicados en la plataforma
SELECT * FROM Articulo

--comando para poblar los formularios de contacto  a modo de ejemplo
INSERT INTO FormularioContacto(Nombre, CorreoElectronico, Mensaje)
VALUES ('Sabina Flores', 'sflores@mail.com','xxxxxxxxxxxxxx');

--comandos para obtener datos de los formularios de contacto en la plataforma
SELECT * FROM FormularioContacto
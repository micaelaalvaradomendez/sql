CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Autores (
    IdAutor INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Pais VARCHAR(100),
    Fechanacimiento DATE
);

CREATE TABLE Generos (
    IdGenero INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Libros (
    ISBN VARCHAR(13) PRIMARY KEY,
    Titulo VARCHAR(255),
    AnoPublicacion INT,
    IdAutor INT,
    IdGenero INT,
    Disponibilidad BOOLEAN,
    FOREIGN KEY (IdAutor) REFERENCES Autores(IdAutor),
    FOREIGN KEY (IdGenero) REFERENCES Generos(IdGenero)
);

CREATE TABLE Usuarios (
    IdUsuario INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    CorreoElectronico VARCHAR(100)
);

CREATE TABLE Prestamos (
    IdPrestamo INT PRIMARY KEY,
    IdUsuario INT,
    ISBN VARCHAR(13),
    FechaPrestamo DATE,
    FechaDevolucionPrevista DATE,
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY (ISBN) REFERENCES Libros(ISBN)
);
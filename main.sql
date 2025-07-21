CREATE DATABASE Biblioteca;
USE Biblioteca;


CREATE TABLE Editoriales (
    id_editorial INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(50)
);

CREATE TABLE Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    anio_publicacion YEAR,
    id_editorial INT,
    id_categoria INT,
    isbn VARCHAR(20) UNIQUE
);

CREATE TABLE Autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);


CREATE TABLE Libro_Autor (
    id_libro INT,
    id_autor INT,
    PRIMARY KEY (id_libro, id_autor)
);


CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    correo_electronico VARCHAR(100) UNIQUE,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Prestamos (
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_libro INT,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    devuelto BOOLEAN DEFAULT FALSE
);


ALTER TABLE Libros
ADD CONSTRAINT fk_libros_editorial
    FOREIGN KEY (id_editorial) REFERENCES Editoriales(id_editorial),
ADD CONSTRAINT fk_libros_categoria
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria);
    

ALTER TABLE libro_autor
ADD	CONSTRAINT fk_libroautor_libro
	FOREIGN KEY (id_libro) REFERENCES libros(id_libro),
ADD CONSTRAINT fk_libroautor_autor
	FOREIGN KEY (id_autor) REFERENCES autores(id_autor);
    

ALTER TABLE prestamos
ADD CONSTRAINT fk_prestamos_usuario
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
ADD CONSTRAINT fk_prestamos_libro
	FOREIGN KEY (id_libro) REFERENCES libros(id_libro);

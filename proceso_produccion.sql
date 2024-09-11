create database gestion_docentes;
use gestion_docentes;



CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(8) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `usuarios` VALUES (1,'luis','1988');

 select * from usuarios;
 
 
 CREATE TABLE docentes (
    id_docente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(55) NOT NULL,
    ci VARCHAR(50)  NOT NULL,
    correo VARCHAR(50) NOT NULL,
    telefono VARCHAR(50)NOT NULL,
    direccion varchar(50)NOT NULL,
    fecha_contratacion DATE
);

-- Creación de la tabla de unidades educativas
CREATE TABLE unidades_educativas (
    id_unidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(55) NOT NULL,
    direccion varchar(50)NOT NULL,
    telefono VARCHAR(50)NOT NULL,
    correo VARCHAR(50)NOT NULL
);

-- Creación de la tabla de asistencia
CREATE TABLE asistencia (
    id_asistencia INT (50) AUTO_INCREMENT PRIMARY KEY,
    id_docente INT(50)NOT NULL,
    fecha DATE,
    hora_llegada TIME,
    estado VARCHAR(50),
    FOREIGN KEY (id_docente) REFERENCES docentes(id_docente)

);

-- Creación de la tabla de administradores
CREATE TABLE administradores (
    id_administrador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(55) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    telefono VARCHAR(50)NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    contraseña VARCHAR(55) NOT NULL
);

-- Creación de la tabla de cursos
CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    nivel VARCHAR(50)NOT NULL,
    id_unidad INT(50)NOT NULL,
    FOREIGN KEY (id_unidad) REFERENCES unidades_educativas(id_unidad)

);

-- Creación de la tabla de asignaciones
CREATE TABLE asignaciones (
    id_asignacion INT AUTO_INCREMENT PRIMARY KEY,
    id_docente INT(50)NOT NULL,
    id_curso INT(50)NOT NULL,
    periodo VARCHAR(50)NOT NULL,
    FOREIGN KEY (id_docente) REFERENCES docentes(id_docente),

    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
 
);
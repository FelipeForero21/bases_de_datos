
-- Validacion de que esta en linea la base de datos.
SHOW DATABASES


// Creacion de tablas
CREATE TABLE  usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(150),
    password VARCHAR(45),
    edad VARCHAR(45),
    genero VARCHAR(45),
    altura VARCHAR(30),
    peso VARCHAR(30)
    )

CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(30),
    modelo VARCHAR(45),
    marca VARCHAR(45),
    color VARCHAR(45),
    tipo_vehiculo VARCHAR(30)
)

CREATE TABLE personas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    genero VARCHAR(10),
    color_del_pelo VARCHAR(10),
    color_ojos VARCHAR(10),
    altura VARCHAR(15)
    )

CREATE TABLE empresas(
    id int PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    nit VARCHAR(30),
    telefono VARCHAR(10),
    direccion VARCHAR(30)
)

CREATE TABLE paises(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30)
)


-- eliminacion de tabla seleccionada completamente
DROP TABLE nombre_tabla;

-- Seleccionar valores "filas" de una tabla seleccionado
select nombres, apellidos from usuarios


-- eliminar valores de una fila segun su id
delete from estudiantes where id = 2

-- Insertar datos a una tabla
INSERT INTO usuarios (nombres, apellidos, correo, password) VALUES("h", "forero", "correo@gmail.com", "123")



SHOW ENGINES 
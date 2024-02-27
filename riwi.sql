
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

-- 1. NOMBRES QUE TENGAN MENOR DE 10 AÑOS
SELECT nombres, apellidos, edad FROM  users WHERE edad < 10


-- 2. MUJER ENTRE 20 Y 30 AÑOS
SELECT * FROM  users WHERE edad >= 20  AND edad <=30  AND genero = "M" 



-- 3. PERSONA CON MENOR EDAD

select MIN(edad) from users -- Falta Mejorar
SELECT * FROM users ORDER BY edad ASC LIMIT 1;

-- 4. USUARIOS REGISTRADOS
SELECT COUNT(*) FROM users


-- 5. 5 Primeros usuarios en la base de datos
SELECT * FROM users ORDER BY id ASC LIMIT 5

-- 6. 10 ultimos usuarios en la base de datos
SELECT * FROM users ORDER BY id DESC LIMIT 10;

-- 7. Listar usuarios que su correo finalice en .net
SELECT * FROM users WHERE correo LIKE "%.net%";

-- 8. Listar usuarios que no vivan colombia
SELECT * FROM users WHERE NOT pais = "colombia";
SELECT * FROM users WHERE  pais != "colombia";

-- 9. listar usuarios que no vivan en ecuador y panama
SELECT * FROM users WHERE pais NOT IN("ecuador", "panama")

SELECT * FROM users WHERE NOT pais = "ecuador" AND NOT pais = "panama"

-- 10. cuantos(numero) usuarios son de colombia y les guste el rock

SELECT COUNT(*) FROM users where pais = "colombia" and musica ="rock"
 
-- 11. actualizar el genero musical de todos los usuarios de la base de datos de "metal" a "carranga"

UPDATE users Set musica = "carranga" WHERE musica = "metal"

SELECT musica FROM users WHERE musica = "metal"


-- 12. listado de hombre que les guste la "carranga" sean de colombia y tengan entre 10 y 20 años de edad

SELECT * FROM users WHERE genero = "H" AND musica = "carranga" AND pais = "colombia" AND edad BETWEEN 10 and 20

-- 13. actualizar todos los usuarios que tengan 99 años, su nievo genero musical favorito sera la "carranga"
UPDATE users SET musica = "carranga" WHERE edad = "99"

SELECT * FROM users WHERE edad = "99"

-- 14. listar todos los usuarios que su nombre inicie con "a", y "A"

SELECT * FROM users WHERE UPPER(nombres) LIKE "a%"

-- 15. listar todos los usuarios que su nombre finalice con "z", y "Z"

SELECT * FROM users WHERE LOWER(nombres) LIKE "%z"

-- 16. Actualizar los usuarios que tengan 50 años de edad su nuevo genero musical sera NULL.

UPDATE users SET  musica = "NULL" WHERE edad = "50"

SELECT * FROM users WHERE edad = "50"

-- 17. Listar todos los usuarios que su genero musical sea igual a NULL. 

SELECT * FROM users WHERE musica = "NULL"

-- 18. Cual es el resultado de la suma de todas las edades de la base de datos

SELECT SUM(edad) from users

-- 19. cuantos usuarios tenemos registrados en "ecuador"

SELECT * FROM users WHERE pais = "ecuador"

-- 20. Cuantos usuarios son de colombia y les gusta el vallenato

SELECT * FROM users WHERE pais = "colombia" and musica = "vallenato"

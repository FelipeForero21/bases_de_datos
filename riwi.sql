
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

### Motores de base de datos

-- Un motor de base de datos en MySQL es un componente fundamental que define cómo se almacenan, organizan y recuperan los datos en la base de datos.

-- **Funciones principales:**

-- * **Almacenamiento:** Define cómo se guardan los datos en el disco duro, incluyendo estructuras de datos, formatos y compresión.
-- * **Acceso:** Determina cómo se accede a los datos, ya sea mediante consultas SQL, APIs o interfaces gráficas.
-- * **Optimización:** Implementa estrategias para optimizar el rendimiento de las consultas y la velocidad de recuperación de datos.
-- * **Integridad:** Garantiza la integridad y consistencia de los datos, previniendo errores y corrupción.

-- **Ejemplos de motores de almacenamiento en MySQL:**

-- * **InnoDB:** Transaccional, robusto, ideal para aplicaciones con alta concurrencia y actualizaciones frecuentes.
-- * **MyISAM:** No transaccional, rápido para lecturas, simple, adecuado para sitios web estáticos o con baja carga.
-- * **Memory:** Almacena datos en memoria RAM, ideal para conjuntos de datos pequeños y acceso rápido.
-- * **CSV:** Almacena datos en archivos CSV, útil para interoperabilidad con otras herramientas.

-- **Elección del motor adecuado:**

-- La elección del motor adecuado depende de las necesidades específicas del proyecto, como el tipo de aplicación, el volumen de datos, la frecuencia de acceso y las características de rendimiento requeridas.

-- **Recursos adicionales:**

-- * Documentación oficial de MySQL sobre motores de almacenamiento: [https://dev.mysql.com/doc/refman/8.3/en/storage-engines.html](https://dev.mysql.com/doc/refman/8.3/en/storage-engines.html)
-- * Artículo sobre los diferentes motores de almacenamiento en MySQL: [https://medium.com/@priyankgondaliya/unlock-the-power-of-mysql-storage-engines-selecting-the-right-engine-for-optimal-performance-and-51b77831579e](https://medium.com/@priyankgondaliya/unlock-the-power-of-mysql-storage-engines-selecting-the-right-engine-for-optimal-performance-and-51b77831579e)

### SQL vs MySQL

-- **SQL:** Lenguaje de consulta estructurado, utilizado para interactuar con bases de datos relacionales.
-- **MySQL:** Sistema de gestión de bases de datos relacionales (SGBD) que implementa el lenguaje SQL.

-- **Analogía:**
-- * **SQL:** Es como el idioma que se utiliza para hablar con la base de datos.
-- * **MySQL:** Es como la persona que interpreta el idioma y ejecuta las acciones en la base de datos.

### Relaciones en MySQL

-- Las relaciones en MySQL son vínculos que se establecen entre diferentes tablas para organizar y estructurar los datos.

-- **Tipos de relaciones:**
-- * **Uno a uno:** Una fila en una tabla se relaciona con una única fila en otra tabla.
-- * **Uno a muchos:** Una fila en una tabla se relaciona con múltiples filas en otra tabla.
-- * **Muchos a muchos:** Múltiples filas en una tabla se relacionan con múltiples filas en otra tabla.

-- **Claves:**
-- * **Clave primaria:** Campo que identifica de forma única a cada fila en una tabla. No puede tener valores duplicados.
-- * **Clave foránea:** Campo en una tabla que hace referencia a la clave primaria de otra tabla.

-- **Beneficios:**
-- * **Organización:** Permiten estructurar los datos de forma lógica y eficiente.
-- * **Integridad:** Ayudan a mantener la consistencia de los datos y evitar errores.
-- * **Recuperación de datos:** Facilitan la búsqueda y recuperación de información relacionada.

-- **Ejemplo:**
-- Supongamos que tenemos dos tablas: `Clientes` y `Pedidos`.
-- La tabla `Clientes` tiene una clave primaria `id_cliente` y la tabla `Pedidos` tiene una clave foránea `id_cliente` que hace referencia a la tabla `Clientes`.

-- Esta relación nos permite:
-- * Obtener los pedidos de un cliente específico.
-- * Obtener los clientes que han realizado un pedido.
-- * Calcular el total de pedidos por cliente.


SHOW ENGINES 

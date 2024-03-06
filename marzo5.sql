-- Cordial saludo compañeros,
-- Se requiere crear las (tablas,colecciones) necesarias para dar solución a la siguiente problemática.
-- Actualmente cuento con un supermercado, en el cual manejo muchos productos de diferentes categorías 
-- (aseo, enlatado, lácteos, etc), y no cuento con un sistema de información que me permita administrar dichos productos.


-- Crear tabla productos
CREATE TABLE productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    categoria VARCHAR(45),
    precio VARCHAR(45)
)

-- insertamos los productos 
INSERT INTO productos (nombre, categoria, precio) VALUES
("limpido", "aseo", "10.000"),
("atun", "enlatado", "16.000"),
("escoba", "aseo", "8.000"),
("frijoles", "enlatado", "11.000"),
("queso", "lacteo", "10.000"),
("leche", "lacteo", "5.000"),
("durazno", "enlatado", "23.000"),
("trapero", "aseo", "11.000"),
("jabon de cocina", "aseo", "15.000"),
("carne del diablo", "enlatado", "20.000");

DROP Table productos

DROP Table clientes

DROP Table pedidos




CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45),
    celular VARCHAR(45)
)

INSERT INTO clientes (nombre, celular) VALUES 
('Luisa Perez', '3101234567'),
('Camilo Paez', '3102345678'),
('Felipe Forero', '3103456789'),
('Luisa Rodriguez', '3104567890'),
('Alfonso Alberto', '3105678901'),
('David Cano', '3106789012'),
('Santiago Marulanda', '3107890123'),
('Ivan Duque', '3108901234'),
('Angela Ramirez', '3109012345'),
('Santiago Tajada', '3100123456');


CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clientes_id INT,
    productos_id INT,
    cantidad INT,
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Foreign Key (clientes_id) REFERENCES clientes(id),
    Foreign Key (productos_id) REFERENCES productos(id)
)

INSERT INTO pedidos(clientes_id, productos_id, cantidad) VALUES 
(1, 3, 5),
(2, 8, 7),
(3, 2, 9),
(4, 6, 2),
(5, 1, 4),
(6, 4, 8),
(7, 9, 3),
(8, 5, 6),
(9, 7, 1),
(10, 10, 5);

SELECT * FROM clientes;

SELECT * FROM productos;

SELECT * FROM productos WHERE categoria = 'aseo' AND precio < '12.000';


SELECT c.nombre, SUM(precio * cantidad) AS total_gastado
FROM clientes 
INNER JOIN pedidos pe ON c.id = pe.clientes_id
INNER JOIN productos pr ON pe.productos_id = pr.id
GROUP BY c.nombre;


-- adicional a eso me encuentro manejando pedidos que realizan los clientes desde whatsapp y me gustaria que existiera la forma de hacer eso en una base de datos, donde puede relacionar esos pedidos con mis clientes.
-- Necesito generar la solución a nivel de bases de datos relacionales y no relacionales.
-- Entregables.
-- Código fuente de la base de datos en mysql
-- Codigo fuente de la base de datos en mongoDB
-- Para realizar pruebas se requiere que exista en cada entidad o colección por lo menos un registro
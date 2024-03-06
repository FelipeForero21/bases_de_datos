// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

// The current database to use.
use('supermercado');

// Create a new document in the collection.
db.getCollection('supermercado').insertOne({

});

db.createCollection("productos");

db.productos.insertMany([
    { nombre: "limpido", categoria: "aseo", precio: "10.000" },
    { nombre: "atun", categoria: "enlatado", precio: "16.000" },
    { nombre: "escoba", categoria: "aseo", precio: "8.000" },
    { nombre: "frijoles", categoria: "enlatado", precio: "11.000" },
    { nombre: "queso", categoria: "lacteo", precio: "10.000" },
    { nombre: "leche", categoria: "lacteo", precio: "5.000" },
    { nombre: "durazno", categoria: "enlatado", precio: "23.000" },
    { nombre: "trapero", categoria: "aseo", precio: "11.000" },
    { nombre: "jabon de cocina", categoria: "aseo", precio: "15.000" },
    { nombre: "carne del diablo", categoria: "enlatado", precio: "20.000" }
]);


db.createCollection("clientes");

db.clientes.insertMany([
    { nombre: "Luisa Perez", celular: "3101234567" },
    { nombre: "Camilo Paez", celular: "3102345678" },
    { nombre: "Felipe Forero", celular: "3103456789" },
    { nombre: "Luisa Rodriguez", celular: "3104567890" },
    { nombre: "Alfonso Alberto", celular: "3105678901" },
    { nombre: "David Cano", celular: "3106789012" },
    { nombre: "Santiago Marulanda", celular: "3107890123" },
    { nombre: "Ivan Duque", celular: "3108901234" },
    { nombre: "Angela Ramirez", celular: "3109012345" },
    { nombre: "Santiago Tajada", celular: "3100123456" }
]);


db.createCollection("pedidos");

db.pedidos.insertMany([
    { clientes_id: 1, productos_id: 3, cantidad: 5, fecha_pedido: new Date() },
    { clientes_id: 2, productos_id: 8, cantidad: 7, fecha_pedido: new Date() },
    { clientes_id: 3, productos_id: 2, cantidad: 9, fecha_pedido: new Date() },
    { clientes_id: 4, productos_id: 6, cantidad: 2, fecha_pedido: new Date() },
    { clientes_id: 5, productos_id: 1, cantidad: 4, fecha_pedido: new Date() },
    { clientes_id: 6, productos_id: 4, cantidad: 8, fecha_pedido: new Date() },
    { clientes_id: 7, productos_id: 9, cantidad: 3, fecha_pedido: new Date() },
    { clientes_id: 8, productos_id: 5, cantidad: 6, fecha_pedido: new Date() },
    { clientes_id: 9, productos_id: 7, cantidad: 1, fecha_pedido: new Date() },
    { clientes_id: 10, productos_id: 10, cantidad: 5, fecha_pedido: new Date() }
]);

db.productos.find({ categoria: "aseo", precio: { $lt: "12.000" } });

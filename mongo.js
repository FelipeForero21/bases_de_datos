/* global use, db */
// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

const database = 'test';
const collection = 'NEW_COLLECTION_NAME';

// The current database to use.
use(database);

// Create a new collection.
db.createCollection(collection);

// The prototype form to create a collection:
/* db.createCollection( <name>,
  {
    capped: <boolean>,
    autoIndexId: <boolean>,
    size: <number>,
    max: <number>,
    storageEngine: <document>,
    validator: <document>,
    validationLevel: <string>,
    validationAction: <string>,
    indexOptionDefaults: <document>,
    viewOn: <string>,
    pipeline: <pipeline>,
    collation: <document>,
    writeConcern: <document>,
    timeseries: { // Added in MongoDB 5.0
      timeField: <string>, // required for time series collections
      metaField: <string>,
      granularity: <string>,
      bucketMaxSpanSeconds: <number>, // Added in MongoDB 6.3
      bucketRoundingSeconds: <number>, // Added in MongoDB 6.3
    },
    expireAfterSeconds: <number>,
    clusteredIndex: <document>, // Added in MongoDB 5.3
  }
)*/

// More information on the `createCollection` command can be found at:
// https://www.mongodb.com/docs/manual/reference/method/db.createCollection/



db.usuarios20000.find()


// 1. Listado de todos los usuarios con solo los nombres, apellidos y edad, que tengan 20 años de edad.

db.usuarios20000.find({edad:20},{nombres: 1, apellidos: 1, edad: 1})


// 2. Listado de todas las mujeres en la base de datos que tengan entre 20 y 30 años de edad.

db.usuarios20000.find({genero: "M", edad: { $gte: 20, $lte: 30 }})


// 3. Quién es la persona con menos edad de la base de datos.
db.usuarios20000.find().sort( { edad: 1 }).limit(1);

// 4. Cuantos usuarios hay registrados en la base de datos.

db.usuarios20000.count()

// 5.Traer los 5 primeros usuarios de la base de datos

db.usuarios20000.find().limit(5)

// 6. Traer los 10 últimos usuarios de la base de datos

db.usuarios20000.find({}, {nombres: 1},{ sort: { _id: -1 } }).limit(10)

// 7. Listar usuarios que su correo finalice en .net

db.usuarios20000.find({ correo: /\.net$/ })

// 8. Listar usuarios no vivan en  colombia.

db.usuarios20000.find({pais: {$ne: "colombia"}})

// 9. Listar usuarios que no vivan en ecuador y panamá.

db.usuarios20000.find({pais: {$nin: ["ecuador", "panama"]}})

// 10. Cuantos(numero) usuarios son de colombia y les gusta el rock.

db.usuarios20000.find({pais: "colombia", musica: "rock"}).count()

// 11. Actualizar el género musical de todos los usuarios de la base de datos de "metal" a "carranga".

db.usuarios20000.updateMany({musica: "metal"},{$set: {musica: "carranga"}})

// 12. Listado de hombres que les guste la "carranga" sean de colombia y tengan entre 10 y 20 años de edad.
db.usuarios20000.find({pais: "colombia", musica: "carranga", edad: { $gte: 20, $lte: 30 } })

// 13. Actualizar a todos los usuarios que tengan 99 años, su nuevo género musical favorito será la "carranga"

db.usuarios20000.updateMany({edad:99}, {$set: {musica: "carranga"}})

// 14. Listar todos los usuarios que su nombre inicie con "a","A"

db.usuarios20000.find({ nombres: { $regex: /^A/i } })

// 15. Listar todos los usuarios que su apellido finalice en "z","Z"

db.usuarios20000.find({apellidos: {$regex: /Z$/i}})
// 16. Actualizar los usuarios que tengan 50 años de edad su nuevo género musical será NULL

db.usuarios20000.updateMany({edad: 50,}, {$set: {musica: null}} )

// 17. Listar todos los usuarios que su género musical sea igual a NULL

db.usuarios20000.find({musica: null})
// 18. Cual es el resultado de la suma de todas las edades de la base de datos.

db.usuarios20000.aggregate([{$group: {_id: null, total: {$sum: "$edad"}}}])

// 19. Cuantos usuarios tenemos registrados de "ecuador"

db.usuarios20000.find({pais: "ecuador"}).count()
// 20. Cuántos usuarios son de Colombia y les gusta el vallenato.

db.usuarios20000.find({pais: "colombia", musica: "vallenato"}).count()




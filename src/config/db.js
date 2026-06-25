const mysql = require('mysql2');

// Crear la conexión a la base de datos
const connection = mysql.createConnection({
  host: '127.0.0.1',
  user: 'root',
  password: 'tu_password_secreto', // Cambiala por tu contraseña real
  database: 'mi_api_db',
  port: 3306
});

connection.connect((err) => {
  if (err) {
    console.error('Error conectando a la base de datos: ' + err.stack);
    return;
  }
  console.log('Conectado exitosamente a la base de datos con el ID ' + connection.threadId);
});

module.exports = connection;

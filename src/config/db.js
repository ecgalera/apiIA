const mysql = require('mysql2/promise');

// Crear un pool de conexiones compatible con Promises
const pool = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password: 'tu_password_secreto', // Cámbiala por tu contraseña real
  database: 'mi_api_db',
  port: 3306,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

module.exports = pool;

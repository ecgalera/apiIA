const db = require('../../config/db');

async function findAll() {
  const [rows] = await db.query('SELECT id, nombre, precio, created_at FROM productos');
  return rows;
}

async function findById(id) {
  const [rows] = await db.query('SELECT id, nombre, precio, created_at FROM productos WHERE id = ?', [id]);
  return rows[0];
}

async function create(data) {
  const { nombre, precio } = data;
  const [result] = await db.query('INSERT INTO productos (nombre, precio) VALUES (?, ?)', [nombre, precio]);
  return result.insertId;
}

async function update(id, data) {
  const { nombre, precio } = data;
  await db.query('UPDATE productos SET nombre = ?, precio = ? WHERE id = ?', [nombre, precio, id]);
}

async function remove(id) {
  await db.query('DELETE FROM productos WHERE id = ?', [id]);
}

module.exports = { findAll, findById, create, update, remove };

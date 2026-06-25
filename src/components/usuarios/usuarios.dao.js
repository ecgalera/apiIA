const db = require('../../config/db');

async function findAll() {
  const [rows] = await db.query('SELECT id, nombre, email, created_at FROM usuarios');
  return rows;
}

async function findById(id) {
  const [rows] = await db.query('SELECT id, nombre, email, created_at FROM usuarios WHERE id = ?', [id]);
  return rows[0];
}

async function create(data) {
  const { nombre, email } = data;
  const [result] = await db.query('INSERT INTO usuarios (nombre, email) VALUES (?, ?)', [nombre, email]);
  return result.insertId;
}

async function update(id, data) {
  const { nombre, email } = data;
  await db.query('UPDATE usuarios SET nombre = ?, email = ? WHERE id = ?', [nombre, email, id]);
}

async function remove(id) {
  await db.query('DELETE FROM usuarios WHERE id = ?', [id]);
}

module.exports = { findAll, findById, create, update, remove };

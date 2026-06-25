// Modelo ligero para usuarios (transformaciones)
function toPublic(row) {
  if (!row) return null;
  return {
    id: row.id,
    nombre: row.nombre,
    email: row.email,
    creado: row.created_at
  };
}

module.exports = { toPublic };

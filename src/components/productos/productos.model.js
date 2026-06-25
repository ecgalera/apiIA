// Modelo ligero para productos
function toPublic(row) {
  if (!row) return null;
  return {
    id: row.id,
    nombre: row.nombre,
    precio: Number(row.precio),
    creado: row.created_at
  };
}

module.exports = { toPublic };

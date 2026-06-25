const dao = require('./productos.dao');

async function getAll(req, res, next) {
  try {
    const rows = await dao.findAll();
    res.json(rows);
  } catch (err) { next(err); }
}

async function getById(req, res, next) {
  try {
    const id = req.params.id;
    const row = await dao.findById(id);
    if (!row) return res.status(404).json({ error: 'Not found' });
    res.json(row);
  } catch (err) { next(err); }
}

async function create(req, res, next) {
  try {
    const data = req.body;
    const id = await dao.create(data);
    res.status(201).json({ id });
  } catch (err) { next(err); }
}

async function update(req, res, next) {
  try {
    const id = req.params.id;
    const data = req.body;
    await dao.update(id, data);
    res.json({ ok: true });
  } catch (err) { next(err); }
}

async function remove(req, res, next) {
  try {
    const id = req.params.id;
    await dao.remove(id);
    res.status(204).end();
  } catch (err) { next(err); }
}

module.exports = { getAll, getById, create, update, remove };

const express = require('express');
const router = express.Router();

const usuariosRoutes = require('../components/usuarios/usuarios.routes');
const productosRoutes = require('../components/productos/productos.routes');

router.use('/usuarios', usuariosRoutes);
router.use('/productos', productosRoutes);

module.exports = router;

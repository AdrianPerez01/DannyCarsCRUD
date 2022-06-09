var express = require('express');
var router = express.Router();
const proveedorController = require ("../controllers/proveedorController");

/* GET home page. */
router.get('/', proveedorController.index);
router.get('/crear', proveedorController.crear);
router.post('/', proveedorController.guardar);

module.exports = router;

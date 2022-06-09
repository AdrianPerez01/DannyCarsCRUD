var express = require('express');
var router = express.Router();
const articuloController = require ("../controllers/articuloController");

var multer = require('multer');
var fecha = Date.now();

var rutaAlmacen = multer.diskStorage({
    destination:function(request, file, callback)
    {
        callback(null,'/public/images/');
    },
    filename:function(request, file, callback){
        console.log(file);
        callback(null,fecha+"_"+file.originalname);
    }
}
);
var cargar= multer({store:rutaAlmacen});

/* GET home page. */
router.get('/mostrar',articuloController.mostrar);
router.get('/', articuloController.index);
router.get('/crear', articuloController.rellenar);
router.post('/',cargar.single("imagen_art"), articuloController.guardar);
//router.post('/eliminar/:cod_art',articuloController.eliminar );

module.exports = router;
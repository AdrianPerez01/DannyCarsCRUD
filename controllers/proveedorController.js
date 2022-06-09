var conexion = require('../config/conexion');
var proveedor = require('../model/proveedor');
module.exports=
{
    index:function(req,res){

        proveedor.obtener(conexion, function(err,datos){
            console.log(datos);
            res.render('./proveedor/index',{ proveedores:datos});
        });
            
        },
    crear:function (req,res){
        res.render('./proveedor/crear');
    },
    guardar:function(req,res){
        console.log(req.body);
        
        proveedor.insertar(conexion,req.body, function(err,datos){
             res.redirect('/proveedor');
             console.log(err);
        });
    }
    
}

const res = require('express/lib/response');
var conexion = require('../config/conexion');
var articulo = require('../model/articulo');
module.exports=
{

    index:function(req,res){

        articulo.obtener(conexion, function(err,datos){
            res.render('./articulo/index',{articulos:datos});
            console.log(datos);
        });
    },

    rellenar:function(req,res){

         articulo.Mostrar(conexion, function(err,datos){        
            res.render('./articulo/crear',{articulos:datos});
            //console.log(datos);
        }); 
    },
    guardar:function(req,res){
        articulo.insertar(conexion,req.body, function(err,datos){
             res.redirect('/articulo');
             //console.log(req.file.filename);
        });
    },
    mostrar:function(req,res){
        articulo.obtener(conexion, function(err,datos){
        res.render('./articulo/mostrar',{articulos:datos});
        });
    },
    destroy: function(req, res) {
        articulo.destroy(conexion, req.params.cod_art, function(err) {
          res.redirect("/articulo")
        })
      }


    
}
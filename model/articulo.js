module.exports={
    obtener:function(conexion,funcion){
        conexion.query("USE dannycars");
        conexion.query("SELECT * FROM articulo",funcion);
        //conexion.query("SELECT articulo.cod_art, proveedor.Nombre_Empresa_Prov, categoria.nombre_cat, articulo.nombre_art,articulo.descripcion_art,articulo.marca_Art,articulo.precio_compra_art,articulo.precio_venta_art FROM articulo, categoria,proveedor WHERE proveedor.Id_Prov=articulo.id_prov AND categoria.id_cat=articulo.id_cat",funcion);
    },
    Mostrar:function(conexion,funcion){
        conexion.query("USE dannycars");
        conexion.query("SELECT Nombre_Empresa_Prov,Id_Prov FROM proveedor ",funcion);
    },
    insertar:function(conexion, datos, funcion){
        conexion.query("USE dannycars");
        conexion.query("INSERT INTO articulo (cod_art,imagen_art,id_prov,id_cat, nombre_art, descripcion_art, marca_Art, precio_compra_art,precio_venta_art) VALUES (?,?,?,1,?,?,?,?,?)",
        [datos.cod_art,datos.imagen_art,datos.id_prov,datos.nombre_art,datos.descripcion_art,datos.marca_Art,datos.precio_compra_art,datos.precio_venta_art], funcion);
    },
    eliminar:function(conexion, datos, funcion){
        conexion.query("USE dannycars"); 
        conexion.query(`DELETE FROM articulo WHERE cod_art=?`,[datos.cod_art], funcion );
    }
    /*retornarDatosCod:function(conexion,cod_art,funcion){
        conexion.query("USE dannycars");
        conexion.query("SELECT articulo.cod_art, proveedor.Nombre_Empresa_Prov, categoria.nombre_cat, articulo.nombre_art,articulo.descripcion_art,articulo.marca_Art,articulo.precio_compra_art,articulo.precio_venta_art FROM articulo, categoria,proveedor WHERE proveedor.Id_Prov=articulo.id_prov AND categoria.id_cat=articulo.id_cat AND cod_art=?",[cod_art],funcion);
    }*/
}
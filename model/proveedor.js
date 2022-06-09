module.exports={
    obtener:function(conexion, funcion){
        conexion.query("USE dannycars");
        conexion.query("SELECT * FROM proveedor", funcion);
    },
    insertar:function(conexion, datos, funcion){
        conexion.query("USE dannycars");
        conexion.query("INSERT INTO proveedor (Nombre_Prov,Apellido_Prov,Nombre_Empresa_Prov, Direccion_Prov, Pais_Prov, Telefono_Prov, Correo_Prov) VALUES (?,?,?,?,?,?,?)",
        [datos.Nombre_Prov,datos.Apellido_Prov,datos.Nombre_Empresa_Prov,datos.Direccion_Prov,datos.Pais_Prov,datos.Telefono_Prov,datos.Correo_Prov], funcion);
    }

}
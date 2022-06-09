var mysql = require('mysql');
var con = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    databse:'dannycars'
});

con.connect(
    (err)=>{
        if(!err){
            console.log('Conexion establecida');
        }
        else{
            console.log('error de conexion');
        }
    }
);

module.exports=con;
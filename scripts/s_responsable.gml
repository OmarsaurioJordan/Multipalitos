//devuelve verdadero si es el dueno de la unidad
//arg0: id instancia a checkear

var respuesta;

if(argument0.xyz == myid){
    respuesta = true;
}
else if(!escliente and argument0.socket < 0){
    respuesta = true;
}
else{
    respuesta = false;
}

return(respuesta);

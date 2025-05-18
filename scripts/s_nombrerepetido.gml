//verifica si nombre existe en jugador activo
//arg0: nombre a buscar

var respuesta;
respuesta = false;

with(o_unidad){
    if(socket > -1 or socket == -2){
        if(nombre == argument0){
            respuesta = true;
            break;
        }
    }
}

if(argument0 == ""){
    respuesta = true;
}

return(respuesta);

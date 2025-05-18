//devuelve verdadero si nadie a alcanzado los puntos maximos grupos

var respuesta;
respuesta = true;

with(o_base){
    if(puntos >= mg_puntos){
        respuesta = false;
        break;
    }
}

return(respuesta);

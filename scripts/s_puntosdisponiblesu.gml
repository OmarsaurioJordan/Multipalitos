//devuelve verdadero si nadie a alcanzado los puntos maximos

var respuesta;
respuesta = true;

with(o_unidad){
    if(puntos >= m_puntos){
        respuesta = false;
        break;
    }
}

return(respuesta);

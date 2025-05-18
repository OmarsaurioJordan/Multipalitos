//devuelve verdadero si espacio apropiado para revivir
//arg0: id instancia que llama

var respuesta;
respuesta = true;

with(o_unidad){
    if(estado == 1 or estado == 3){
        if(point_distance(argument0.x, argument0.y, x, y) < m_vision){
            respuesta = false;
            break;
        }
    }
}

return(respuesta);

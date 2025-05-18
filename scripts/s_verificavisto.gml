//devuelve verdadero si esta viendo a una unidad viva
//arg0: id instancia que llama
//arg1: id instancia a verificar

var respuesta;
respuesta = false;

if(argument1.estado == 1 or argument1.estado == 3){
    if(point_distance(argument1.x, argument1.y, argument0.x, argument0.y) < m_vision){
        if(!collision_line(argument1.x, argument1.y, argument0.x, argument0.y, o_bloque, 1, 1)){
            respuesta = true;
        }
    }
}

return(respuesta);

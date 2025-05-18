//devuelve verdadero si hay un lider cercano del mismo grupo
//arg0: grupo
//arg1: x
//arg2: y
//arg3: clase

var respuesta;
respuesta = false;

if(argument0 > 0 and argument3 != 5){
    with(o_unidad){
        if(clase == 5 and estado == 1 and grupo == argument0){
            if(point_distance(x, y, argument1, argument2) < m_vision * 0.5){
                respuesta = true;
                break;
            }
        }
    }
}

return(respuesta);

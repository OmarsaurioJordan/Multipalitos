//busca un lugar para nuevo cliente, devuelve id web asignado
//arg0: nombre a buscar
//arg1: true: jugador reencauchado

var respuesta;
respuesta = -1;

with(o_unidad){
    if(socket == -1){
        if(nombre == argument0 and argument1){
            respuesta = xyz;
            break;
        }
    }
}
if(respuesta == -1 and !argument1){
    with(o_unidad){
        if(socket == -1 and nombre == ""){
            respuesta = xyz;
            break;
        }
    }
    if(respuesta == -1){
        with(o_unidad){
            if(socket == -1){
                respuesta = xyz;
                municion = m_municion;
                salud = m_salud;
                regenera = 0;
                recarga = 0;
                alista = 0;
                dispara = 0;
                puntos = 0;
                grupo = 0;
                clase = 0;
                energia = 1;
                if(porpuntos){
                    s_mejorpuntos();
                }
                else{
                    s_mejormuertes();
                }
                break;
            }
        }
    }
}

return(respuesta);

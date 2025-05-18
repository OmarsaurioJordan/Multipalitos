//devuelve verdadero si pertenece a grupo de jugador
//arg0: grupo de unidad cualquiera

var respuesta;
respuesta = false;

with(s_elidu(myid)){
    if(grupo == argument0 and grupo > 0){
        respuesta = true;
    }
}

return(respuesta);

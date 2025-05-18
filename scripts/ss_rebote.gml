//devuelve verdadero si no hubo funciones de colision
//recordar quitar caja de colision a fantasmas
//arg0: id instancia que llama

var respuesta, aux;
respuesta = true;

with(argument0){
    aux = instance_place(x, y, o_bloque);
    if(aux == noone){
        aux = instance_place(x, y, o_unidad);
    }
    if(aux != noone){
        aux = point_direction(aux.x, aux.y, x, y);
        x += lengthdir_x(m_caminar * delta, aux);
        y += lengthdir_y(m_caminar * delta, aux);
        if(direvel != -1){
            direvel = irandom(359);
        }
        esquive = irandom(60);
        rodeo = choose(60 + esquive, -(60 + esquive));
        respuesta = false;
    }
}

return(respuesta);

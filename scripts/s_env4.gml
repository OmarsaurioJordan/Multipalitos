//arg0: id instancia que envia datos
//arg1: -1: a todos, sino id web a enviarle

var mibuffer;
mibuffer = buffer_create(10, buffer_grow, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 4);
with(argument0){
    buffer_write(mibuffer, buffer_u8, xyz);
    buffer_write(mibuffer, buffer_u8, municion);
    buffer_write(mibuffer, buffer_u8, salud);
    buffer_write(mibuffer, buffer_u8, puntos);
    buffer_write(mibuffer, buffer_u8, grupo);
    buffer_write(mibuffer, buffer_u8, clase);
    if(energia > 1){
        buffer_write(mibuffer, buffer_u8, 2);
    }
    else{
        buffer_write(mibuffer, buffer_u8, energia);
    }
    buffer_write(mibuffer, buffer_u8, pelo);
    buffer_write(mibuffer, buffer_u8, idioma);
    buffer_write(mibuffer, buffer_u8, estado);
    buffer_write(mibuffer, buffer_string, nombre);
}

if(argument1 == -1){
    with(o_unidad){
        if(socket > -1){
            network_send_packet(socket, mibuffer, buffer_get_size(mibuffer));
        }
    }
}
else{
    network_send_packet(s_elidu(argument1).socket, mibuffer, buffer_get_size(mibuffer));
}
buffer_delete(mibuffer);

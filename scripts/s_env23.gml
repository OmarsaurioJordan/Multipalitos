//arg0: color notificacion
//arg1: mensaje notificacion
//arg2: -1: a todos, sino id web a enviarle

var mibuffer;
mibuffer = buffer_create(3, buffer_grow, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 23);
buffer_write(mibuffer, buffer_u8, argument0);
buffer_write(mibuffer, buffer_string, argument1);

with(o_unidad){
    if(socket > -1 and xyz != argument2){
        network_send_packet(socket, mibuffer, buffer_get_size(mibuffer));
    }
}
buffer_delete(mibuffer);

//arg0: id web del saludable
//arg1: salud

var mibuffer;
mibuffer = buffer_create(3, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 11);
buffer_write(mibuffer, buffer_u8, argument0);
buffer_write(mibuffer, buffer_u8, argument1);

with(o_unidad){
    if(socket > -1){
        network_send_packet(socket, mibuffer, 3);
    }
}
buffer_delete(mibuffer);

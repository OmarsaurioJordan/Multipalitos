//arg0: mejores jugador y grupo, global

var mibuffer;
mibuffer = buffer_create(3, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 17);
buffer_write(mibuffer, buffer_u8, winunidad);
buffer_write(mibuffer, buffer_u8, wingrupo);

with(o_unidad){
    if(socket > -1){
        network_send_packet(socket, mibuffer, 3);
    }
}
buffer_delete(mibuffer);

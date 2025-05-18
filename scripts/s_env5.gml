var mibuffer;
mibuffer = buffer_create(1, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 5);

with(o_unidad){
    if(socket > -1){
        network_send_packet(socket, mibuffer, 1);
    }
}
buffer_delete(mibuffer);

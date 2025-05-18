//arg0: id web de flecha
//arg1: pos x de flecha
//arg2: pos y de flecha
//arg3: direccion flecha
//arg4: tipo flecha

var mibuffer;
mibuffer = buffer_create(9, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 15);
buffer_write(mibuffer, buffer_u8, argument0);
buffer_write(mibuffer, buffer_u16, argument1);
buffer_write(mibuffer, buffer_u16, argument2);
buffer_write(mibuffer, buffer_u16, argument3);
buffer_write(mibuffer, buffer_u8, argument4);

with(o_unidad){
    if(socket > -1){
        network_send_packet(socket, mibuffer, 9);
    }
}
buffer_delete(mibuffer);

//para ir a su base
//arg0: socket del cliente
//arg1: grupo actual

var mibuffer;
mibuffer = buffer_create(2, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 20);
buffer_write(mibuffer, buffer_u8, argument1);

network_send_packet(argument0, mibuffer, 2);
buffer_delete(mibuffer);

//arg0: socket del cliente

var mibuffer;
mibuffer = buffer_create(1, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 2);

network_send_packet(argument0, mibuffer, 1);
buffer_delete(mibuffer);

//arg0: socket del cliente
//arg1: id web del grupo
//arg2: puntos del grupo
//arg3: miembros del grupo

var mibuffer;
mibuffer = buffer_create(4, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 21);
buffer_write(mibuffer, buffer_u8, argument1);
buffer_write(mibuffer, buffer_u8, argument2);
buffer_write(mibuffer, buffer_u8, argument3);

network_send_packet(argument0, mibuffer, 4);
buffer_delete(mibuffer);

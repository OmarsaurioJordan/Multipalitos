//arg0: socket del cliente
//arg1: id web
//arg2: x
//arg3: y

var mibuffer;
mibuffer = buffer_create(10, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 3);
buffer_write(mibuffer, buffer_u8, argument1);
buffer_write(mibuffer, buffer_u16, argument2);
buffer_write(mibuffer, buffer_u16, argument3);
buffer_write(mibuffer, buffer_f32, argument4);

network_send_packet(argument0, mibuffer, 10);
buffer_delete(mibuffer);

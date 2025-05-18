//envia el mapa .ini
//arg0: socket del cliente

var mibuffer, elmapa;
mibuffer = buffer_create(2, buffer_grow, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 13);
elmapa = buffer_load("mupa_" + o_control.mapa + ".ini");
buffer_copy(elmapa, 0, buffer_get_size(elmapa), mibuffer, 1);

network_send_packet(argument0, mibuffer, buffer_get_size(mibuffer));
buffer_delete(mibuffer);
buffer_delete(elmapa);

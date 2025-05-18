//arg0: socket del cliente

var mibuffer;
mibuffer = buffer_create(1, buffer_grow, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 1);
buffer_write(mibuffer, buffer_u16, argument0);
buffer_write(mibuffer, buffer_u8, o_control.q_idioma);
buffer_write(mibuffer, buffer_u8, o_control.q_pelo);
buffer_write(mibuffer, buffer_string, o_control.q_nombre);

network_send_packet(o_cliente.cliente, mibuffer, buffer_get_size(mibuffer));
buffer_delete(mibuffer);

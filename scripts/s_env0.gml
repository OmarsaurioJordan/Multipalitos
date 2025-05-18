//arg0: socket del cliente

var mibuffer;
mibuffer = buffer_create(1, buffer_grow, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 0);
buffer_write(mibuffer, buffer_u16, argument0);
buffer_write(mibuffer, buffer_u8, porpuntos);
buffer_write(mibuffer, buffer_u8, wingrupo);
buffer_write(mibuffer, buffer_u8, winunidad);
buffer_write(mibuffer, buffer_string, m_version);

network_send_packet(argument0, mibuffer, buffer_get_size(mibuffer));
buffer_delete(mibuffer);

//arg0: id web del sonidoso
//arg1: posicion x
//arg2: posicion y
//arg3: tipo sonido
//arg4: -1: a todos, otro: id web exepcion, (si server)

var mibuffer;
mibuffer = buffer_create(7, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 25);
buffer_write(mibuffer, buffer_u8, argument0);
buffer_write(mibuffer, buffer_u16, argument1);
buffer_write(mibuffer, buffer_u16, argument2);
buffer_write(mibuffer, buffer_u8, argument3);

if(escliente){
    network_send_packet(o_cliente.cliente, mibuffer, 7);
}
else{
    with(o_unidad){
        if(socket > -1 and xyz != argument4){
            network_send_packet(socket, mibuffer, 7);
        }
    }
}
buffer_delete(mibuffer);

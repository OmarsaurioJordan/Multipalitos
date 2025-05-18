//arg0: id web del energico
//arg1: energia a enviar
//arg2: -1: a todos, otro: id web exepcion, (si server)

var mibuffer;
mibuffer = buffer_create(3, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 6);
buffer_write(mibuffer, buffer_u8, argument0);
if(argument1 > 1){
    buffer_write(mibuffer, buffer_u8, 2);
}
else{
    buffer_write(mibuffer, buffer_u8, argument1);
}

if(escliente){
    network_send_packet(o_cliente.cliente, mibuffer, 3);
}
else{
    with(o_unidad){
        if(socket > -1 and xyz != argument2){
            network_send_packet(socket, mibuffer, 3);
        }
    }
}
buffer_delete(mibuffer);

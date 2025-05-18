//arg0: id web del estadoagrupado
//arg1: estado
//arg2: grupo
//arg3: -1: a todos, otro: id web exepcion, (si server)

var mibuffer;
mibuffer = buffer_create(4, buffer_fixed, 1);
buffer_seek(mibuffer, buffer_seek_start, 0);

buffer_write(mibuffer, buffer_u8, 12);
buffer_write(mibuffer, buffer_u8, argument0);
buffer_write(mibuffer, buffer_u8, argument1);
buffer_write(mibuffer, buffer_u8, argument2);

if(escliente){
    network_send_packet(o_cliente.cliente, mibuffer, 4);
}
else{
    with(o_unidad){
        if(socket > -1 and xyz != argument3){
            network_send_packet(socket, mibuffer, 4);
        }
    }
}
buffer_delete(mibuffer);

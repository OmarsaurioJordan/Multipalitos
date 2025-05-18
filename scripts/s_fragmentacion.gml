//crea varias flechas de una muerta
//arg0: flecha madre

with(argument0){
    if(!escliente and tipo == 3){
        var i, aux;
        for(i = 0; i < 8; i++){
            aux = instance_create(x + lengthdir_x(16, direction + i * 45),
                y + lengthdir_y(16, direction + i * 45), o_flecha);
            aux.direction = direction + i * 45;
            aux.lanzador = lanzador;
            aux.tipo = 4;
            aux.xyz = s_idflechazo();
            s_env15(aux.xyz, x, y, i * 45, 4);
        }
        s_sonido(lanzador, x, y, 0, -1, true);
    }
}

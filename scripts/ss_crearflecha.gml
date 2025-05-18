//arg0: id instancia que llama

var punto, aux;

with(argument0){
    punto = -1;
    aux = collision_circle(x, y, 80, o_unidad, 1, 1);
    if(aux){
        if(aux.estado == 1 or aux.estado == 3){
            if(aux.grupo == 0 or aux.grupo != grupo){
                punto = point_direction(x, y, aux.x, aux.y);
            }
        }
    }
    
    if(escliente){
        if(energia == 0){
            switch(clase){
                case 2:
                    if(punto == -1){
                        punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
                    }
                    punto = s_sumangulos(punto, -22);
                    var i;
                    for(i = 0; i < 4; i++){
                        s_env14(xyz, x, y, punto, 0);
                        punto = s_sumangulos(punto, 15);
                    }
                    energia = t_energia * 1.5 + 1;
                    s_env6(xyz, energia, -1);
                    s_sonido(xyz, x, y, 0, -1, true);
                break;
                case 3:
                    if(punto == -1){
                        punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
                    }
                    s_env14(xyz, x, y, punto, 1);
                    energia = t_energia + 1;
                    s_env6(xyz, energia, -1);
                    s_sonido(xyz, x, y, 0, -1, true);
                break;
                case 4:
                    if(punto == -1){
                        punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
                    }
                    s_env14(xyz, x, y, punto, 2);
                    energia = t_energia + 1;
                    s_env6(xyz, energia, -1);
                    s_sonido(xyz, x, y, 0, -1, true);
                break;
                default:
                    if(punto == -1){
                        punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
                    }
                    s_env14(xyz, x, y, punto, 0);
                    s_sonido(xyz, x, y, 0, -1, true);
                break;
            }
        }
        else{
            if(punto == -1){
                punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
            }
            s_env14(xyz, x, y, punto, 0);
            s_sonido(xyz, x, y, 0, -1, true);
        }
    }
    else if(socket == -2){
        if(energia == 0){
            switch(clase){
                case 2:
                    if(punto == -1){
                        punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
                    }
                    punto = s_sumangulos(punto, -22);
                    var i;
                    for(i = 0; i < 4; i++){
                        aux = instance_create(x, y, o_flecha);
                        aux.direction = punto;
                        aux.lanzador = xyz;
                        aux.xyz = s_idflechazo();
                        s_env15(aux.xyz, x, y, punto, 0);
                        punto = s_sumangulos(punto, 15);
                    }
                    energia = t_energia * 1.5 + 1;
                    s_env6(xyz, energia, -1);
                    s_sonido(xyz, x, y, 0, -1, true);
                break;
                case 3:
                    if(punto == -1){
                        punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
                    }
                    aux = instance_create(x, y, o_flecha);
                    aux.direction = punto;
                    aux.lanzador = xyz;
                    aux.tipo = 1;
                    aux.xyz = s_idflechazo();
                    s_env15(aux.xyz, x, y, punto, 1);
                    energia = t_energia + 1;
                    s_env6(xyz, energia, -1);
                    s_sonido(xyz, x, y, 0, -1, true);
                break;
                case 4:
                    if(punto == -1){
                        punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
                    }
                    aux = instance_create(x, y, o_flecha);
                    aux.direction = punto;
                    aux.lanzador = xyz;
                    aux.tipo = 2;
                    aux.xyz = s_idflechazo();
                    s_env15(aux.xyz, x, y, punto, 2);
                    energia = t_energia + 1;
                    s_env6(xyz, energia, -1);
                    s_sonido(xyz, x, y, 0, -1, true);
                break;
                default:
                    if(punto == -1){
                        punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
                    }
                    aux = instance_create(x, y, o_flecha);
                    aux.direction = punto;
                    aux.lanzador = xyz;
                    aux.xyz = s_idflechazo();
                    s_env15(aux.xyz, x, y, punto, 0);
                    s_sonido(xyz, x, y, 0, -1, true);
                break;
            }
        }
        else{
            if(punto == -1){
                punto = point_direction(x, y, o_apuntador.m_x, o_apuntador.m_y);
            }
            aux = instance_create(x, y, o_flecha);
            aux.direction = punto;
            aux.lanzador = xyz;
            aux.xyz = s_idflechazo();
            s_env15(aux.xyz, x, y, punto, 0);
            s_sonido(xyz, x, y, 0, -1, true);
        }
    }
    else if(blanco != -1){
        if(energia <= 1 and irandom(3) == 0){
            if(punto == -1){
                punto = point_direction(x, y, blanco.x, blanco.y) + choose(1, -1) * irandom(m_errartiro_ia);
            }
            aux = instance_create(x, y, o_flecha);
            aux.direction = punto;
            aux.lanzador = xyz;
            aux.tipo = 3;
            aux.xyz = s_idflechazo();
            s_env15(aux.xyz, x, y, punto, 3);
            energia = t_energia * 1.5 + 1;
            s_env6(xyz, energia, -1);
            s_sonido(xyz, x, y, 0, -1, true);
        }
        else{
            if(punto == -1){
                punto = point_direction(x, y, blanco.x, blanco.y) + choose(1, -1) * irandom(m_errartiro_ia);
            }
            aux = instance_create(x, y, o_flecha);
            aux.direction = punto;
            aux.lanzador = xyz;
            aux.xyz = s_idflechazo();
            s_env15(aux.xyz, x, y, punto, 0);
            s_sonido(xyz, x, y, 0, -1, true);
        }
    }
}

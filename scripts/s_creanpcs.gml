//crea a todos los npcs

var g0, g1, g2, g3, g4;
g0 = 0;
g1 = 0;
g2 = 0;
g3 = 0;
g4 = 0;
with(o_base){
    switch(xyz){
        case 0:
            g0 = 1;
        break;
        case 1:
            g1 = 1;
        break;
        case 2:
            g2 = 1;
        break;
        case 3:
            g3 = 1;
        break;
        case 4:
            g4 = 1;
        break;
    }
}

switch(o_control.ordenanpcs){
    case 0:
        var gg;
        gg = 0;
        if(g2 == 1){
            gg = 2;
        }
        else if(g4 == 1){
            gg = 4;
        }
        else if(g3 == 1){
            gg = 3;
        }
        else if(g1 == 1){
            gg = 1;
        }
        if(gg > 0){
            var i, aux;
            i = 13;
            with(s_elidg(gg)){
                repeat(m_unidades){
                    aux = instance_create(x, y, o_unidad);
                    aux.xyz = i;
                    aux.grupo = xyz;
                    aux.socket = -3;
                    aux.estado = 4;
                    aux.revive = t_revive * 2;
                    aux.mask_index = -1;
                    i++;
                }
            }
        }
    break;
    case 1:
        var numero;
        numero = g1 + g2 + g3 + g4;
        if(numero > 0){
            var i, aux;
            numero = round(m_unidades / numero);
            i = 13;
            with(o_base){
                if(xyz > 0){
                    repeat(numero){
                        aux = instance_create(x, y, o_unidad);
                        aux.xyz = i;
                        aux.grupo = xyz;
                        aux.socket = -3;
                        aux.estado = 4;
                        aux.revive = t_revive * 2;
                        aux.mask_index = -1;
                        i++;
                    }
                }
            }
        }
    break;
    case 2:
        if(g0 == 1){
            var xx, yy, i, aux;
            i = 13;
            repeat(m_unidades){
                do{
                    xx = irandom(room_width);
                    yy = irandom(room_height);
                }
                until(collision_circle(xx, yy, m_vision, o_base, 1, 1));
                aux = instance_create(xx, yy, o_unidad);
                aux.xyz = i;
                aux.socket = -3;
                aux.estado = 4;
                aux.revive = t_revive * 2;
                aux.mask_index = -1;
                i++;
            }
        }
    break;
}

if(instance_number(o_unidad) == m_unidades){
    var i, xx, yy, aux;
    i = 13;
    repeat(m_unidades){
        xx = irandom(room_width);
        yy = irandom(room_height);
        aux = instance_create(xx, yy, o_unidad);
        aux.xyz = i;
        aux.socket = -3;
        i++;
    }
}

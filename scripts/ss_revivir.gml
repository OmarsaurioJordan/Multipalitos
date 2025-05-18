//solo server, condiciones para revivir
//arg0: id instancia que llama

with(argument0){
    switch(estado){
        case 0:
            if(socket > -1 or socket == -2){
                var kkk;
                kkk = instance_nearest(x, y, o_base);
                if(porpuntos or kkk.puntos < mg_muertes){
                    grupo = kkk.xyz;
                    estado = 1;
                    s_actualigrupo(kkk);
                    s_env12(xyz, estado, grupo, -1);
                    s_sonido(xyz, x, y, 4, -1, true);
                }
                else{
                    kkk = s_grupovivopami();
                    if(kkk != -1){
                        grupo = kkk.xyz;
                        estado = 1;
                        s_actualigrupo(kkk);
                        s_env12(xyz, estado, grupo, -1);
                        s_sonido(xyz, x, y, 4, -1, true);
                    }
                    else{
                        grupo = 0;
                        estado = 2;
                        mask_index = -1;
                        s_env12(xyz, estado, grupo, -1);
                    }
                }
            }
        break;
        case 2:
            if(grupo == 0 and s_tipocerca(id)){
                revive = 2;
            }
            else{
                municion = m_municion;
                salud = m_salud;
                regenera = 0;
                var kkk;
                kkk = collision_circle(x, y, 48, o_base, true, true);
                if(kkk and porpuntos){
                    var viejo;
                    viejo = grupo;
                    grupo = kkk.xyz;
                    s_actualigrupo(kkk);
                    s_actualigrupo(s_elidg(viejo));
                }
                if(socket > -1 or socket == -2){
                    estado = 1;
                    if(grupo > 0){
                        if(socket > -1){
                            s_env20(socket, grupo);
                        }
                        else{
                            var rrr;
                            rrr = s_grupoazar(grupo);
                            x = rrr.x;
                            y = rrr.y;
                            view_xview[0] = x - view_wview[0] * 0.5;
                            view_yview[0] = y - view_hview[0] * 0.5;
                            s_sonido(xyz, x, y, 4, -1, true);
                        }
                    }
                    else{
                        s_sonido(xyz, x, y, 4, -1, true);
                    }
                }
                else{
                    estado = 0;
                }
                mask_index = d_base0;
                s_env12(xyz, estado, grupo, -1);
            }
        break;
        case 4:
            if(grupo == 0 and s_tipocerca(id)){
                revive = 2;
            }
            else{
                municion = m_municion;
                salud = m_salud;
                regenera = 0;
                estado = 3;
                if(grupo > 0){
                    var rrr;
                    rrr = s_elidg(grupo);
                    x = rrr.x;
                    y = rrr.y;
                }
                mask_index = d_base0;
                s_env12(xyz, estado, grupo, -1);
                s_sonido(xyz, x, y, 4, -1, true);
            }
        break;
    }
}

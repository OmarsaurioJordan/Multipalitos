//arg0: id instancia que llama

with(argument0){
    if(keyboard_check_pressed(vk_anykey)){
        switch(keyboard_key){
            case ord('E'):
                if(energia == 0){
                    energia = 1;
                }
                else if(energia == 1){
                    energia = 0;
                }
                s_env6(xyz, energia, -1);
            break;
            case ord('R'):
                if(recarga == 0 and alista == 0 and dispara == 0){
                    if(municion < m_municion){
                        recarga = t_recarga;
                        s_env9(xyz, municion, 1, -1);
                    }
                }
            break;
            case vk_space:
                if(recarga == 0 and alista == 0 and dispara == 0){
                    var hhh;
                    hhh = collision_circle(x, y, 48, o_base, 1, 1);
                    if(hhh){
                        if(hhh.xyz == grupo){
                            if(clase == m_clases){
                                clase = 0;
                            }
                            else{
                                clase++;
                            }
                            s_env10(xyz, clase, -1);
                        }
                    }
                }
            break;
            case vk_numpad0:
                if(expresa == 0 and estado == 1){
                    expresion = 0;
                    expresa = t_expresa;
                    s_env7(xyz, 0, -1);
                }
            break;
            case vk_numpad1:
                if(expresa == 0 and estado == 1){
                    expresion = 3;
                    expresa = t_expresa;
                    s_env7(xyz, 3, -1);
                }
            break;
            case vk_numpad2:
                if(expresa == 0 and estado == 1){
                    expresion = 6;
                    expresa = t_expresa;
                    s_env7(xyz, 6, -1);
                }
            break;
            case vk_numpad3:
                if(expresa == 0 and estado == 1){
                    expresion = 9;
                    expresa = t_expresa;
                    s_env7(xyz, 9, -1);
                }
            break;
            case vk_numpad4:
                if(expresa == 0 and estado == 1){
                    expresion = 2;
                    expresa = t_expresa;
                    s_env7(xyz, 2, -1);
                }
            break;
            case vk_numpad5:
                if(expresa == 0 and estado == 1){
                    expresion = 5;
                    expresa = t_expresa;
                    s_env7(xyz, 5, -1);
                }
            break;
            case vk_numpad6:
                if(expresa == 0 and estado == 1){
                    expresion = 8;
                    expresa = t_expresa;
                    s_env7(xyz, 8, -1);
                }
            break;
            case vk_numpad7:
                if(expresa == 0 and estado == 1){
                    expresion = 1;
                    expresa = t_expresa;
                    s_env7(xyz, 1, -1);
                }
            break;
            case vk_numpad8:
                if(expresa == 0 and estado == 1){
                    expresion = 4;
                    expresa = t_expresa;
                    s_env7(xyz, 4, -1);
                }
            break;
            case vk_numpad9:
                if(expresa == 0 and estado == 1){
                    expresion = 7;
                    expresa = t_expresa;
                    s_env7(xyz, 7, -1);
                }
            break;
        }
    }
}

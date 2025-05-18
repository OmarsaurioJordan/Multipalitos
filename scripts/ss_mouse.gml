//arg0: id instancia que llama

with(argument0){
    if(mouse_check_button_released(mb_left)){
        if(energia == 0 and clase == 6){
            if(point_distance(x, y, o_apuntador.m_x, o_apuntador.m_y) > 96){
                s_sonido(xyz, x, y, 12, -1, true);
                instance_create(x, y, o_humo);
                x = o_apuntador.m_x;
                y = o_apuntador.m_y;
                instance_create(x, y, o_humo);
                energia = t_energia * 2 + 1;
                s_env6(xyz, energia, -1);
                s_sonido(xyz, x, y, 12, -1, true);
                
            }
        }
    }
    else if(mouse_check_button(mb_left)){
        if(keyboard_check(ord('Q'))){
            if(expresa == 0 and estado == 1){
                var i, j;
                for(i = 0; i < 3; i++){
                    for(j = 0; j < 3; j++){
                        if(point_distance(mouse_x, mouse_y,
                                view_xview[0] + view_wview[0] * 0.5 - 120 + i * 120,
                                view_yview[0] + view_hview[0] * 0.45 - 120 + j * 120
                                ) < m_mouse * 2){
                            expresion = 1 + i * 3 + j;
                            expresa = t_expresa;
                            s_env7(xyz, 1 + i * 3 + j, -1);
                        }
                    }
                }
                if(point_distance(mouse_x, mouse_y,
                        view_xview[0] + view_wview[0] * 0.5,
                        view_yview[0] + view_hview[0] * 0.45 + 240
                        ) < m_mouse * 2){
                    expresion = 0;
                    expresa = t_expresa;
                    s_env7(xyz, 0, -1);
                }
            }
        }
        else if(recarga == 0 and alista == 0 and dispara == 0){
            dispara = t_dispara;
            s_env9(xyz, municion, 3, -1);
        }
    }
    else if(mouse_check_button_pressed(mb_right)){
        if(recarga == 0 and alista == 0 and dispara == 0){
            if(municion < m_municion){
                recarga = t_recarga;
                s_env9(xyz, municion, 1, -1);
            }
        }
    }
    else if(mouse_wheel_down() or mouse_wheel_up()){
        if(energia == 0){
            energia = 1;
        }
        else if(energia == 1){
            energia = 0;
        }
        s_env6(xyz, energia, -1);
    }
}

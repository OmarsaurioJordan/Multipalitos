//dibuja GUI en juego

with(argument0){
    
    var xv, yv;
    xv = view_xview[0];
    yv = view_yview[0];
    
    if(ajuda){
        draw_set_valign(fa_top);
        draw_set_halign(fa_left);
        if(!escliente){
            draw_text_transformed_colour(xv, yv,
                "port: " + string(puerto), 1.7, 1.7, 0, c_black, c_black, c_black, c_black, 1);
        }
        draw_sprite_ext(d_help, 1, xv + view_wview[0] * 0.5,
            yv + view_hview[0] * 0.3, 1.8, 1.8, 0, c_white, 1);
        draw_sprite_ext(d_help, 2, xv + view_wview[0] * 0.5,
            yv + view_hview[0] * 0.3 + 172 * 1.8, 1.8, 1.8, 0, c_white, 1);
        draw_set_halign(fa_center);
        if(porpuntos){
            draw_text_transformed_colour(xv + view_wview[0] * 0.5, yv,
                "for points", 1.7, 1.7, 0, c_black, c_black, c_black, c_black, 1);
            draw_text_transformed_colour(xv + view_wview[0] * 0.5, yv + 28,
                "i:" + string(m_puntos) + " , g:" + string(mg_puntos), 1.6, 1.6, 0,
                c_black, c_black, c_black, c_black, 1);
        }
        else{
            draw_text_transformed_colour(xv + view_wview[0] * 0.5, yv,
                "for lives", 1.7, 1.7, 0, c_black, c_black, c_black, c_black, 1);
            draw_text_transformed_colour(xv + view_wview[0] * 0.5, yv + 28,
                "i:" + string(m_muertes) + " , g:" + string(mg_muertes), 1.6, 1.6, 0,
                c_black, c_black, c_black, c_black, 1);
        }
    }
    else{
        var eee, tuu;
        eee = 0.083333 * 0.23;
        
        //pintar mapa
        if(surface_exists(telon)){
            draw_surface_ext(telon, xv, yv, 0.23, 0.23, 0, c_white, 0.75);
        }
        draw_set_alpha(0.75);
        draw_rectangle_colour(xv + 1, yv + 1, xv + 100, yv + 100, c_maroon, c_maroon, c_maroon, c_maroon, true);
        draw_rectangle_colour(xv + xv * eee, yv + yv * eee, xv + (xv + view_wview[0]) * eee,
            yv + (yv + view_hview[0]) * eee, c_maroon, c_maroon, c_maroon, c_maroon, true);
        with(o_alertisima){
            draw_sprite_ext(d_alertisimas, direction, xv + x * eee, yv + y * eee,
                -(alarm[0] / room_speed) + 1, -(alarm[0] / room_speed) + 1, 0, c_white,
                ((0.7 / room_speed) * alarm[0]) + 0.3);
        }
        tuu = s_elidu(myid);
        if(tuu != -1){
            draw_point(xv + tuu.x * eee, yv + tuu.y * eee);
        }
        draw_set_alpha(1);
    }
    
    var aux;
    aux = s_elidu(myid);
    if(aux != -1){
        if(aux.revive > 0){
            draw_set_valign(fa_top);
            draw_set_halign(fa_right);
            draw_text_transformed_colour(xv + view_wview[0], 
                yv, string(round(aux.revive)), 2.5, 2.5, 0,
                c_black, c_black, c_black, c_black, 1);
        }
        else if(aux.estado == 1 and aux.expresa == 0){
            if(keyboard_check(ord('Q'))){
                draw_set_alpha(0.6);
                draw_rectangle_colour(
                    xv + view_wview[0] * 0.5 - 180,
                    yv + view_hview[0] * 0.45 - 180,
                    xv + view_wview[0] * 0.5 + 180,
                    yv + view_hview[0] * 0.45 + 180,
                    c_white, c_white, c_white, c_white, false);
                draw_rectangle_colour(
                    xv + view_wview[0] * 0.5 - 60,
                    yv + view_hview[0] * 0.45 + 180,
                    xv + view_wview[0] * 0.5 + 60,
                    yv + view_hview[0] * 0.45 + 300,
                    c_white, c_white, c_white, c_white, false);
                draw_set_alpha(1);
                var i, j, xua;
                for(i = 0; i < 3; i++){
                    for(j = 0; j < 3; j++){
                        if(point_distance(mouse_x, mouse_y,
                                xv + view_wview[0] * 0.5 - 120 + i * 120,
                                yv + view_hview[0] * 0.45 - 120 + j * 120
                                ) < m_mouse * 2){
                            xua = 2.25;
                        }
                        else{
                            xua = 2;
                        }
                        draw_sprite_ext(d_botonexpresa, 1 + i * 3 + j,
                            xv + view_wview[0] * 0.5 - 120 + i * 120,
                            yv + view_hview[0] * 0.45 - 120 + j * 120,
                            xua, xua, 0, -1, 1);
                    }
                }
                if(point_distance(mouse_x, mouse_y,
                        xv + view_wview[0] * 0.5,
                        yv + view_hview[0] * 0.45 + 240
                        ) < m_mouse * 2){
                    xua = 2.25;
                }
                else{
                    xua = 2;
                }
                draw_sprite_ext(d_botonexpresa, 0,
                    xv + view_wview[0] * 0.5,
                    yv + view_hview[0] * 0.45 + 240,
                    xua, xua, 0, -1, 1);
                draw_sprite_ext(d_mouse, 0, mouse_x, mouse_y, 1.8, 1.8, 0, -1, 1);
            }
        }
    }
}

//todo el comportamiento autonomo de los npcs
//arg0: id instancia que llama

with(argument0){
    
    //buscar un lider al azar
    if(grupo > 0){
        if(irandom(m_algobusq) == 0){
            lider = ss_buscalider(id);
        }
        if(lider != -1){
            if(!s_verificavisto(id, lider)){
                lider = -1;
            }
        }
    }
    
    //buscar un enemigo al azar
    if(irandom(m_algobusq) == 0){
        blanco = ss_buscablanco(id);
    }
    if(blanco != -1){
        if(!s_verificavisto(id, blanco)){
            blanco = -1;
        }
    }
    
    //acciones de desplazamiento
    if(ss_rebote(id)){
        if(lider != -1){
            xm = lider.x;
            ym = lider.y;
            var aux;
            if(point_distance(x, y, xm, ym) > m_vision * 0.3){
                mp_potential_step_object(xm, ym, m_caminar * delta, o_bloque);
            }
            else if(point_distance(x, y, xm, ym) < m_vision * 0.15){
                aux = point_direction(xm, ym, x, y);
                x += lengthdir_x(m_caminar * delta, aux);
                y += lengthdir_y(m_caminar * delta, aux);
            }
            else if (blanco != -1){
                aux = point_direction(x, y, xm, ym) + rodeo;
                x += lengthdir_x(m_caminar * delta, aux);
                y += lengthdir_y(m_caminar * delta, aux);
            }
            if(blanco == -1){
                xb = x;
                yb = y;
            }
        }
        else if(point_distance(x, y, xm, ym) > 24){
            mp_potential_step_object(xm, ym, m_caminar * delta, o_bloque);
            if(blanco == -1){
                xb = x;
                yb = y;
            }
        }
        else if(blanco != -1){
            xb = blanco.x;
            yb = blanco.y;
            var aux;
            if(point_distance(x, y, xb, yb) > m_vision * 0.75){
                mp_potential_step_object(xb, yb, m_caminar * delta, o_bloque);
                direction -= 30 + esquive;
            }
            else if(point_distance(x, y, xb, yb) < m_vision * 0.25){
                aux = point_direction(xb, yb, x, y) - 30 + esquive;
                x += lengthdir_x(m_caminar * delta, aux);
                y += lengthdir_y(m_caminar * delta, aux);
            }
            else{
                aux = point_direction(x, y, xb, yb) + rodeo;
                x += lengthdir_x(m_caminar * delta, aux);
                y += lengthdir_y(m_caminar * delta, aux);
            }
            xm = x;
            ym = y;
        }
        else if(point_distance(x, y, xb, yb) > 24){
            mp_potential_step_object(xb, yb, m_caminar * delta, o_bloque);
            xm = x;
            ym = y;
        }
        else{
            ss_errar(id);
            xm = x;
            ym = y;
            xb = x;
            yb = y;
        }
    }
    
    //acciones de ataque
    if(blanco != -1){
        if(recarga == 0 and alista == 0 and dispara == 0){
            dispara = t_dispara;
            s_env9(xyz, municion, 3, -1);
        }
    }
    
    //liberar coordenadas si atrapadas
    if(irandom(m_algobusq * 8) == 0){
        if(choose(true, false)){
            if(collision_line(x, y, xm, ym, o_bloque, 1, 1)){
                xm = x;
                ym = y;
            }
        }
        else{
            if(collision_line(x, y, xb, yb, o_bloque, 1, 1)){
                xb = x;
                yb = y;
            }
        }
    }
    
    //recargar municion
    if(irandom(m_algobusq * 6) == 0){
        if(blanco == -1){
            if(recarga == 0 and alista == 0 and dispara == 0){
                if(municion < m_municion){
                    if(x == xb and y == yb){
                        recarga = t_recarga;
                        s_env9(xyz, municion, 1, -1);
                    }
                }
            }
        }
    }
}

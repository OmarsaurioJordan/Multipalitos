//calcula al mejor por puntos

var acumulado, empate;
acumulado = 0;
empate = true;

with(o_unidad){
    if(puntos == acumulado){
        empate = true;
    }
    else if(puntos > acumulado){
        acumulado = puntos;
        empate = false;
    }
}

if(empate){
    winunidad = 100;
}
else if(!o_servidor.winu){
    with(o_unidad){
        if(puntos == acumulado){
            winunidad = xyz;
            if(puntos >= m_puntos){
                o_servidor.winu = true;
                s_creanotificacion(c_yellow, "$winner#" + nombre, -1);
                break;
            }
        }
    }
}

acumulado = 0;
empate = true;

with(o_base){
    if(puntos == acumulado){
        empate = true;
    }
    else if(puntos > acumulado){
        acumulado = puntos;
        empate = false;
    }
}

if(empate){
    wingrupo = 100;
}
else if(!o_servidor.wing){
    with(o_base){
        if(puntos == acumulado){
            wingrupo = xyz;
            if(puntos >= mg_puntos){
                o_servidor.wing = true;
                switch(xyz){
                    case 1:
                        s_creanotificacion(c_yellow, "$triumphant#BlueTeam", -1);
                    break;
                    case 2:
                        s_creanotificacion(c_yellow, "$triumphant#RedTeam", -1);
                    break;
                    case 3:
                        s_creanotificacion(c_yellow, "$triumphant#AquaTeam", -1);
                    break;
                    case 4:
                        s_creanotificacion(c_yellow, "$triumphant#YellowTeam", -1);
                    break;
                }
                break;
            }
        }
    }
}

s_env17();

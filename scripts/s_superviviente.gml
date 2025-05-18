//verifica si es ganador en juego por muertes
//arg0: id instancia quien mato

var vivost, vivosg, vivo, grupovivo, hhh;
vivost = 0;
vivosg = 0;
vivo = false;
grupovivo = 0;

with(o_base){
    if(xyz > 0){
        if(puntos < mg_muertes){
            grupovivo++;
        }
    }
}

with(o_unidad){
    hhh = false;
    switch(estado){
        case 0:
        case 2:
            if(socket > -1 or socket == -2){
                if(revive > 0 and puntos < m_muertes){
                    hhh = true;
                }
            }
        break;
        case 1:
        case 3:
            hhh = true;
        break;
        case 4:
            if(revive > 0 and puntos < m_muertes){
                hhh = true;
            }
        break;
    }
    if(hhh){
        vivost++;
        if(grupo = argument0.grupo){
            vivosg++;
        }
        if(id == argument0){
            vivo = true;
        }
    }
}

if(vivo and !o_servidor.winu){
    if(vivost == 1){
        o_servidor.winu = true;
        s_creanotificacion(c_yellow, "$winner#" + argument0.nombre, -1);
    }
    else if(argument0.grupo > 0 and vivost == vivosg){
        if(winunidad == argument0.xyz){
            o_servidor.winu = true;
            s_creanotificacion(c_yellow, "$winner#" + argument0.nombre, -1);
        }
    }
}
if(argument0.grupo > 0 and vivost == vivosg and grupovivo == 1 and !o_servidor.wing){
    o_servidor.wing = true;
    switch(argument0.grupo){
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
}

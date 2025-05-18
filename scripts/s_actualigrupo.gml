//actualizar datos del grupo
//arg0: id instancia grupo en foco

var mmm;
mmm = 0;

with(o_unidad){
    if(estado == 1 or estado == 3){
        if(grupo == argument0.xyz){
            mmm++;
        }
    }
    else if(estado == 4 and (porpuntos or puntos < m_muertes)){
        if(grupo == argument0.xyz and (porpuntos or argument0.puntos < mg_muertes)){
            mmm++;
        }
    }
    else if(estado == 2 and socket != -1 and (porpuntos or puntos < m_muertes)){
        if(grupo == argument0.xyz and (porpuntos or argument0.puntos < mg_muertes)){
            mmm++;
        }
    }
}

argument0.miembros = mmm;
s_env22(argument0.xyz, mmm);

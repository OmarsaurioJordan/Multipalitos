//flecha hizo colision con unidad (server)
//devuelve verdadero si no hubo colision con enemigo
//arg0: id instancia flecha
//arg1: id instancia unidad

var respuesta;
respuesta = true;

with(argument0){
    var migrupo, milanzador;
    milanzador = s_elidu(lanzador);
    migrupo = milanzador.grupo;
    
    if(argument1.xyz != lanzador){
        if(argument1.estado == 1 or argument1.estado == 3){
            
            if(tipo == 2){
                //curar unidad
                if(argument1.grupo == migrupo and migrupo > 0){
                    if(argument1.salud < m_salud and argument1.salud > 0){
                        respuesta = false;
                        argument1.salud++;
                        s_env11(argument1.xyz, argument1.salud);
                        s_sonido(argument1.xyz, argument1.x, argument1.y, 6, -1, true);
                    }
                }
            }
            else if(tipo == 3){
                //solo estalla, fragmentos causan danno
                if(argument1.grupo == 0 or argument1.grupo != migrupo){
                    respuesta = false;
                }
            }
            else{
                //herir unidad
                if(argument1.grupo == 0 or argument1.grupo != migrupo){
                    respuesta = false;
                    if(argument1.clase != 7 or random(1) <= 0.666){//probabilidad tanke
                        argument1.salud--;
                        if(argument1.salud <= 0){
                            if(porpuntos){
                                if(s_puntosdisponiblesu()){
                                    milanzador.puntos++;
                                    s_env18(milanzador.xyz, milanzador.puntos);
                                }
                                if(migrupo > 0 and s_puntosdisponiblesg()){
                                    var rrr;
                                    rrr = s_elidg(migrupo);
                                    rrr.puntos++;
                                    s_env19(migrupo, rrr.puntos);
                                }
                                argument1.revive = t_revive;
                                if(argument1.socket > -1){
                                    s_env24(argument1.socket);
                                }
                                s_mejorpuntos();
                                s_creanotificacion(c_orange, argument1.nombre + "#killed by#" + milanzador.nombre, argument1.xyz);
                            }
                            else{
                                if(argument1.grupo == 0){
                                    argument1.puntos++;
                                    s_env18(argument1.xyz, argument1.puntos);
                                    if(argument1.puntos < m_muertes){
                                        argument1.revive = t_revive;
                                        if(argument1.socket > -1){
                                            s_env24(argument1.socket);
                                        }
                                        s_creanotificacion(c_orange, argument1.nombre + "#killed by#" + milanzador.nombre, argument1.xyz);
                                    }
                                    else{
                                        s_creanotificacion(c_red, argument1.nombre + "#destroyed by#" + milanzador.nombre, argument1.xyz);
                                    }
                                }
                                else{
                                    var rrr;
                                    rrr = s_elidg(argument1.grupo);
                                    rrr.puntos++;
                                    if(rrr.puntos > mg_muertes){
                                        rrr.puntos = mg_muertes;
                                    }
                                    s_env19(argument1.grupo, rrr.puntos);
                                    if(rrr.puntos < mg_muertes){
                                        argument1.revive = t_revive;
                                        if(argument1.socket > -1){
                                            s_env24(argument1.socket);
                                        }
                                        s_creanotificacion(c_orange, argument1.nombre + "#killed by#" + milanzador.nombre, argument1.xyz);
                                    }
                                    else{
                                        s_creanotificacion(c_red, argument1.nombre + "#destroyed by#" + milanzador.nombre, argument1.xyz);
                                    }
                                    s_actualigrupo(rrr);
                                }
                                s_mejormuertes();
                                s_superviviente(milanzador);
                            }
                            if(argument1.estado == 3){
                                argument1.estado = 4;
                                argument1.mask_index = -1;
                                var qqq;
                                qqq = s_grupoazar(argument1.grupo);
                                argument1.xm = qqq.x;
                                argument1.ym = qqq.y;
                            }
                            else{
                                argument1.estado = 2;
                                argument1.mask_index = -1;
                            }
                            argument1.disparo = 0;
                            s_env12(argument1.xyz, argument1.estado, argument1.grupo, -1);
                            s_sonido(argument1.xyz, argument1.x, argument1.y, 3, -1, true);
                        }
                        else{
                            argument1.regenera = t_regenera;
                            s_env11(argument1.xyz, argument1.salud);
                            s_sonido(argument1.xyz, argument1.x, argument1.y, 2, -1, true);
                            if(argument1.socket == -3){
                                ss_golpeia(argument1, direction + 180);
                            }
                        }
                    }
                    else{
                        s_sonido(argument1.xyz, argument1.x, argument1.y, 10, -1, true);
                    }
                }
            }
        }
    }
}

return(respuesta);

//ejecuta efectos de sonido y los envia
//arg0: id web generador
//arg1: posicion x
//arg2: posicion y
//arg3: tipo de sonido
//arg4: -1: a todos, otro: id web exepcion, (si server)
//arg5: enviar por tcp

switch(argument3){
    case 0://flecha creada
        audio_play_sound_at(a_flecha, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 12);
    break;
    case 1://flecha colision bloques
        audio_play_sound_at(a_golpemuro, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 11);
    break;
    case 2://golpeado
        switch(irandom(5)){
            case 0:
                audio_play_sound_at(a_golp0, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 15);
            break;
            case 1:
                audio_play_sound_at(a_golp1, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 15);
            break;
            case 2:
                audio_play_sound_at(a_golp2, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 15);
            break;
            case 3:
                audio_play_sound_at(a_golp3, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 15);
            break;
            case 4:
                audio_play_sound_at(a_golp4, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 15);
            break;
            case 5:
                audio_play_sound_at(a_golp5, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 15);
            break;
        }
    break;
    case 3://matado
        audio_play_sound_at(a_muerto, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 18);
    break;
    case 4://revivido
        var sss;
        sss = s_elidu(argument0);
        if(sss.nombre == ""){
            audio_play_sound_at(a_rvive_bot, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
        }
        else{
            switch(sss.idioma){
                case 0:
                    audio_play_sound_at(a_rvive_in, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
                case 1:
                    audio_play_sound_at(a_rvive_es, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
                case 2:
                    audio_play_sound_at(a_rvive_po, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
                case 3:
                    audio_play_sound_at(a_rvive_al, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
                case 4:
                    audio_play_sound_at(a_rvive_fr, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
                case 5:
                    audio_play_sound_at(a_rvive_it, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
                case 6:
                    audio_play_sound_at(a_rvive_ru, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
                case 7:
                    audio_play_sound_at(a_rvive_ch, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
                case 8:
                    audio_play_sound_at(a_rvive_ja, sss.x, sss.y, -65, ms_ref, ms_dis, 1, false, 18);
                break;
            }
        }
    break;
    case 5://regenera vida
        audio_play_sound_at(a_regenera, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 13);
    break;
    case 6://fue curado
        var sss;
        sss = s_elidu(argument0);
        if(sss.nombre == ""){
            audio_play_sound_at(a_graci_bot, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
        }
        else{
            switch(sss.idioma){
                case 0:
                    audio_play_sound_at(a_graci_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
                case 1:
                    audio_play_sound_at(a_graci_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
                case 2:
                    audio_play_sound_at(a_graci_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
                case 3:
                    audio_play_sound_at(a_graci_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
                case 4:
                    audio_play_sound_at(a_graci_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
                case 5:
                    audio_play_sound_at(a_graci_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
                case 6:
                    audio_play_sound_at(a_graci_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
                case 7:
                    audio_play_sound_at(a_graci_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
                case 8:
                    audio_play_sound_at(a_graci_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
                break;
            }
        }
    break;
    case 7://energia high
        audio_play_sound_at(a_cargapoder, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 14);
    break;
    case 10://flecha golpea a tanke
        audio_play_sound_at(a_bloqueaflecha, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 15);
    break;
    case 11://recarga municion
        audio_play_sound_at(a_recarga, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 10);
    break;
    case 12://teletransporta
        audio_play_sound_at(a_teleportacion, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 16);
    break;
}

if(argument5){
    s_env25(argument0, argument1, argument2, argument3, argument4);
}

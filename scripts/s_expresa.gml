//ejecuta sonido de voces en expresiones
//arg0: expresion
//arg1: posicion x
//arg2: posicion y
//arg3: idioma

switch(argument0){
    case 0://grito
        audio_play_sound_at(av_gri, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
    break;
    case 1://bien
        switch(argument3){
            case 0:
                audio_play_sound_at(av_bie_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_bie_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_bie_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_bie_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_bie_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_bie_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_bie_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_bie_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_bie_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
    case 2://ayuda
        switch(argument3){
            case 0:
                audio_play_sound_at(av_ayu_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_ayu_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_ayu_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_ayu_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_ayu_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_ayu_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_ayu_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_ayu_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_ayu_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
    case 3://vamos
        switch(argument3){
            case 0:
                audio_play_sound_at(av_vam_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_vam_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_vam_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_vam_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_vam_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_vam_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_vam_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_vam_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_vam_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
    case 4://mal
        switch(argument3){
            case 0:
                audio_play_sound_at(av_mal_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_mal_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_mal_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_mal_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_mal_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_mal_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_mal_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_mal_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_mal_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
    case 5://estupido
        switch(argument3){
            case 0:
                audio_play_sound_at(av_est_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_est_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_est_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_est_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_est_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_est_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_est_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_est_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_est_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
    case 6://alto
        switch(argument3){
            case 0:
                audio_play_sound_at(av_alt_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_alt_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_alt_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_alt_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_alt_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_alt_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_alt_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_alt_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_alt_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
    case 7://hola
        switch(argument3){
            case 0:
                audio_play_sound_at(av_hol_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_hol_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_hol_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_hol_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_hol_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_hol_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_hol_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_hol_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_hol_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
    case 8://separensen
        switch(argument3){
            case 0:
                audio_play_sound_at(av_sep_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_sep_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_sep_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_sep_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_sep_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_sep_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_sep_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_sep_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_sep_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
    case 9://juntensen
        switch(argument3){
            case 0:
                audio_play_sound_at(av_jun_in, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 1:
                audio_play_sound_at(av_jun_es, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 2:
                audio_play_sound_at(av_jun_po, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 3:
                audio_play_sound_at(av_jun_al, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 4:
                audio_play_sound_at(av_jun_fr, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 5:
                audio_play_sound_at(av_jun_it, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 6:
                audio_play_sound_at(av_jun_ru, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 7:
                audio_play_sound_at(av_jun_ch, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
            case 8:
                audio_play_sound_at(av_jun_ja, argument1, argument2, -65, ms_ref, ms_dis, 1, false, 19);
            break;
        }
    break;
}

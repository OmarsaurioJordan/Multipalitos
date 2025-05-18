//arg0: nombre archivo

if(argument0 != ""){
    if(file_exists("mupa_" + argument0 + ".ini")){
        file_delete("mupa_" + argument0 + ".ini");
    }
    ini_open("mupa_" + argument0 + ".ini");
    var aux, i;
    
    if(instance_exists(oe_muro)){
        for(i = 0; i < instance_number(oe_muro); i++){
            aux = instance_find(oe_muro, i);
            ini_write_string("muros", "x" + string(i), string(aux.x / 24));
            ini_write_string("muros", "y" + string(i), string(aux.y / 24));
        }
    }
    
    if(instance_exists(oe_arbol)){
        for(i = 0; i < instance_number(oe_arbol); i++){
            aux = instance_find(oe_arbol, i);
            ini_write_string("arboles", "x" + string(i), string(aux.x / 24));
            ini_write_string("arboles", "y" + string(i), string(aux.y / 24));
            ini_write_string("arboles", "t" + string(i), string(aux.direction));
        }
    }
    
    if(instance_exists(oe_decorado)){
        for(i = 0; i < instance_number(oe_decorado); i++){
            aux = instance_find(oe_decorado, i);
            ini_write_string("decorados", "x" + string(i), string(aux.x / 24));
            ini_write_string("decorados", "y" + string(i), string(aux.y / 24));
            ini_write_string("decorados", "t" + string(i), string(aux.direction));
        }
    }
    
    if(instance_exists(oe_baldosa)){
        for(i = 0; i < instance_number(oe_baldosa); i++){
            aux = instance_find(oe_baldosa, i);
            ini_write_string("baldosas", "x" + string(i), string(aux.x / 24));
            ini_write_string("baldosas", "y" + string(i), string(aux.y / 24));
        }
    }
    
    if(instance_exists(oe_bases)){
        for(i = 0; i < instance_number(oe_bases); i++){
            aux = instance_find(oe_bases, i);
            ini_write_string("bases", "x" + string(i), string(aux.x / 24));
            ini_write_string("bases", "y" + string(i), string(aux.y / 24));
            switch(aux.object_index){
                case oe_base1:
                    ini_write_string("bases", "t" + string(i), "1");
                break;
                case oe_base2:
                    ini_write_string("bases", "t" + string(i), "2");
                break;
                case oe_base3:
                    ini_write_string("bases", "t" + string(i), "3");
                break;
                case oe_base4:
                    ini_write_string("bases", "t" + string(i), "4");
                break;
                default:
                    ini_write_string("bases", "t" + string(i), "0");
                break;
            }
        }
    }
    
    ini_close();
    audio_play_sound(a_guardar, 20, false);
    s_creamensaje("saved map", c_lime);
}

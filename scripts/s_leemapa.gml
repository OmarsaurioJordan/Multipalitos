//arg0: nombre archivo

if(file_exists("mupa_" + argument0 + ".ini")){
    ini_open("mupa_" + argument0 + ".ini");
    var aux, i;
    
    i = 0;
    while(ini_key_exists("muros", "x" + string(i))){
        instance_create(
            (real(ini_read_string("muros", "x" + string(i), "0")) * 48) + 24,
            (real(ini_read_string("muros", "y" + string(i), "0")) * 48) + 24,
            o_muro);
        i++;
    }
    
    i = 0;
    while(ini_key_exists("arboles", "x" + string(i))){
        aux = instance_create(
            (real(ini_read_string("arboles", "x" + string(i), "0")) * 48) + 24,
            (real(ini_read_string("arboles", "y" + string(i), "0")) * 48) + 24,
            o_arbol);
        aux.direction = real(ini_read_string("arboles", "t" + string(i), "0"));
        i++;
    }
    
    i = 0;
    while(ini_key_exists("decorados", "x" + string(i))){
        tile_add(d_decorados,
            real(ini_read_string("decorados", "t" + string(i), "0")) * 49, 0, 49, 59,
            (real(ini_read_string("decorados", "x" + string(i), "0")) * 48) + 24 - 24,
            (real(ini_read_string("decorados", "y" + string(i), "0")) * 48) + 24 - 52,
            -((real(ini_read_string("decorados", "y" + string(i), "0")) * 48) + 24));
        i++;
    }
    
    i = 0;
    while(ini_key_exists("baldosas", "x" + string(i))){
        tile_add(d_baldosa, 0, 0, 78, 78,
            (real(ini_read_string("baldosas", "x" + string(i), "0")) * 48) - 15,
            (real(ini_read_string("baldosas", "y" + string(i), "0")) * 48) - 15,
            1000 - real(ini_read_string("baldosas", "y" + string(i), "0")));
        i++;
    }
    
    i = 0;
    while(ini_key_exists("bases", "x" + string(i))){
        aux = instance_create(
            (real(ini_read_string("bases", "x" + string(i), "0")) * 48) + 24,
            (real(ini_read_string("bases", "y" + string(i), "0")) * 48) + 24,
            o_base);
        aux.xyz = real(ini_read_string("bases", "t" + string(i), "0"));
        i++;
    }
    
    ini_close();
}

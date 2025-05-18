//arg0: nombre archivo

if(file_exists("mupa_" + argument0 + ".ini")){
    ini_open("mupa_" + argument0 + ".ini");
    var aux, i;
    
    i = 0;
    while(ini_key_exists("muros", "x" + string(i))){
        instance_create(
            real(ini_read_string("muros", "x" + string(i), "0")) * 24,
            real(ini_read_string("muros", "y" + string(i), "0")) * 24,
            oe_muro);
        i++;
    }
    
    i = 0;
    while(ini_key_exists("arboles", "x" + string(i))){
        aux = instance_create(
            real(ini_read_string("arboles", "x" + string(i), "0")) * 24,
            real(ini_read_string("arboles", "y" + string(i), "0")) * 24,
            oe_arbol);
        aux.direction = real(ini_read_string("arboles", "t" + string(i), "0"));
        i++;
    }
    
    i = 0;
    while(ini_key_exists("decorados", "x" + string(i))){
        aux = instance_create(
            real(ini_read_string("decorados", "x" + string(i), "0")) * 24,
            real(ini_read_string("decorados", "y" + string(i), "0")) * 24,
            oe_decorado);
        aux.direction = real(ini_read_string("decorados", "t" + string(i), "0"));
        i++;
    }
    
    i = 0;
    while(ini_key_exists("baldosas", "x" + string(i))){
        instance_create(
            real(ini_read_string("baldosas", "x" + string(i), "0")) * 24,
            real(ini_read_string("baldosas", "y" + string(i), "0")) * 24,
            oe_baldosa);
        i++;
    }
    
    i = 0;
    while(ini_key_exists("bases", "x" + string(i))){
        switch(ini_read_string("bases", "t" + string(i), "0")){
            case "1":
                instance_create(
                    real(ini_read_string("bases", "x" + string(i), "0")) * 24,
                    real(ini_read_string("bases", "y" + string(i), "0")) * 24,
                    oe_base1);
            break;
            case "2":
                instance_create(
                    real(ini_read_string("bases", "x" + string(i), "0")) * 24,
                    real(ini_read_string("bases", "y" + string(i), "0")) * 24,
                    oe_base2);
            break;
            case "3":
                instance_create(
                    real(ini_read_string("bases", "x" + string(i), "0")) * 24,
                    real(ini_read_string("bases", "y" + string(i), "0")) * 24,
                    oe_base3);
            break;
            case "4":
                instance_create(
                    real(ini_read_string("bases", "x" + string(i), "0")) * 24,
                    real(ini_read_string("bases", "y" + string(i), "0")) * 24,
                    oe_base4);
            break;
            default:
                instance_create(
                    real(ini_read_string("bases", "x" + string(i), "0")) * 24,
                    real(ini_read_string("bases", "y" + string(i), "0")) * 24,
                    oe_base0);
            break;
        }
        i++;
    }
    
    ini_close();
}

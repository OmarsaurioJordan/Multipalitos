//devuelve verdadero si condiciones para jugar

var respuesta, g1, g2, g3, g4;
respuesta = false;

if(instance_exists(o_base)){
    g1 = 0;
    g2 = 0;
    g3 = 0;
    g4 = 0;
    with(o_base){
        switch(xyz){
            case 0:
                respuesta = true;
            break;
            case 1:
                g1 = 1;
            break;
            case 2:
                g2 = 1;
            break;
            case 3:
                g3 = 1;
            break;
            case 4:
                g4 = 1;
            break;
        }
    }
    if(g1 + g2 + g3 + g4 >= 2){
        respuesta = true;
    }
}

return(respuesta);

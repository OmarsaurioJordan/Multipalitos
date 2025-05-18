//calcula al mejor por muertes

var acumulado, empate;
acumulado = 1000;
empate = true;

with(o_unidad){
    if(puntos == acumulado){
        empate = true;
    }
    else if(puntos < acumulado){
        acumulado = puntos;
        empate = false;
    }
}

if(empate){
    winunidad = 100;
}
else{
    with(o_unidad){
        if(puntos == acumulado){
            winunidad = xyz;
            break;
        }
    }
}

acumulado = 1000;
empate = true;

with(o_base){
    if(puntos == acumulado){
        empate = true;
    }
    else if(puntos < acumulado){
        acumulado = puntos;
        empate = false;
    }
}

if(empate){
    wingrupo = 100;
}
else{
    with(o_base){
        if(puntos == acumulado){
            wingrupo = xyz;
            break;
        }
    }
}

s_env17();

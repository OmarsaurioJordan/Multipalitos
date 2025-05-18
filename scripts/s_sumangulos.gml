//arg0: respuestaulo 1
//arg1: respuestaulo2

var respuesta;
respuesta = argument0 + argument1;

if(abs(respuesta) >= 360){
    respuesta = round(frac(respuesta / 360) * 360);
}

if(respuesta < 0){
    respuesta = 360 + respuesta;
}

return(respuesta);

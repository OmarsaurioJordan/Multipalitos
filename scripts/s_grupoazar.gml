//dado el id de web, devuelve el id de instancia (grupos) al azar
//arg0: id web

var respuesta, i, aux, cuantas;
respuesta = -1;
cuantas = instance_number(o_base) - 1;

i = 0;
while(i < 100 and respuesta == -1){
    aux = instance_find(o_base, irandom(cuantas));
    if(aux.xyz == argument0){
        respuesta = aux;
    }
    i++;
}

return(respuesta);

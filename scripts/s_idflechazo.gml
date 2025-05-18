//asigna un id web a flecha

var resultado;
resultado = o_servidor.proyectiles;

if(o_servidor.proyectiles == 255){
    o_servidor.proyectiles = 1;
}
else{
    o_servidor.proyectiles++;
}

return(resultado);

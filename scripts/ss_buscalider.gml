//devuelve id de lider cercano visualizado
//arg0: id instancia que llama

var respuesta, xx, yy, i;
respuesta = -1;

i = 0;
while(respuesta == -1 and i < m_algobusq * 2){
    do{
        xx = argument0.x - m_vision + irandom(m_vision * 2);
        yy = argument0.y - m_vision + irandom(m_vision * 2);
    }
    until(point_distance(xx, yy, argument0.x, argument0.y) < m_vision);
    
    with(instance_nearest(xx, yy, o_unidad)){
        if(id != argument0){
            if(estado == 1 and clase == 5){
                if(grupo == argument0.grupo and energia == 0){
                    respuesta = id;
                }
            }
        }
    }
    i++;
}

return(respuesta);

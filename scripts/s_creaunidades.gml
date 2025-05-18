//crea a todos los jugadores en lugares al azar

var xx, yy, i, aux;

i = 1;
repeat(m_unidades){
    do{
        xx = irandom(room_width);
        yy = irandom(room_height);
    }
    until(collision_circle(xx, yy, m_vision, o_base, 1, 1));
    aux = instance_create(xx, yy, o_unidad);
    aux.xyz = i;
    i++;
}

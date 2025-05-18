//arg0: npc golpeado
//arg1: direccion golpe

with(argument0){
    if(blanco == -1 and xb == x and yb == y){
        xb = x + lengthdir_x(m_vision * 0.8, argument1);
        yb = y + lengthdir_y(m_vision * 0.8, argument1);
    }
}

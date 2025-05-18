//arg0: id instancia que llama

var aux, vvv;

with(argument0){
    if(keyboard_check(ord('W'))){
        if(keyboard_check(ord('A'))){
            aux = 135;
        }
        else if(keyboard_check(ord('D'))){
            aux = 45;
        }
        else{
            aux = 90;
        }
    }
    else if(keyboard_check(ord('S'))){
        if(keyboard_check(ord('A'))){
            aux = 225;
        }
        else if(keyboard_check(ord('D'))){
            aux = 315;
        }
        else{
            aux = 270;
        }
    }
    else{
        if(keyboard_check(ord('A'))){
            aux = 180;
        }
        else if(keyboard_check(ord('D'))){
            aux = 0;
        }
        else{
            aux = -1;
        }
    }
    if(aux != -1){
        if(estado == 2 or estado == 4){
            vvv = 1.4;
        }
        else if (clase == 8){
            vvv = 1.3;
        }
        else{
            vvv = 1;
        }
        x += lengthdir_x(m_caminar * delta * vvv, aux);
        y += lengthdir_y(m_caminar * delta * vvv, aux);
        if estado == 1 and o_apuntador.pad
        {
            o_apuntador.x += lengthdir_x(m_caminar * delta * vvv, aux);
            o_apuntador.y += lengthdir_y(m_caminar * delta * vvv, aux);
        }
    }
}

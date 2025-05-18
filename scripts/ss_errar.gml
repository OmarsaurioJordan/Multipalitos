//arg0: id instancia que llama

var vvv;

with(argument0){
    if(estado == 2 or estado == 4){
        vvv = 1.3;
    }
    else{
        vvv = 1;
    }
    if(direvel != -1){
        x += lengthdir_x(m_caminar * delta * vvv, direvel);
        y += lengthdir_y(m_caminar * delta * vvv, direvel);
    }
}

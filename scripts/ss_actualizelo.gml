//arg0: id instancia que llama

var vvv, aux;

with(argument0){
    if(point_distance(x, y, xd, yd) > 64){
        if(estado == 2 or estado == 4){
            x = xd;
            y = yd;
        }
        else{
            instance_create(x, y, o_humo);
            x = xd;
            y = yd;
            instance_create(x, y, o_humo);
        }
    }
    else{
        if(estado == 2 or estado == 4){
            vvv = 1.325;
        }
        else{
            vvv = 1.025;
        }
        if(point_distance(x, y, xd, yd) > m_caminar * delta * vvv){
            aux = point_direction(x, y, xd, yd);
            x += lengthdir_x(m_caminar * delta * vvv, aux);
            y += lengthdir_y(m_caminar * delta * vvv, aux);
        }
        else{
            x = xd;
            y = yd;
        }
    }
}

//arg0: id instancia que llama

with(argument0){
    if(x > room_width - 48){
        x = room_width - 48;
        if(direvel != -1){
            direvel = irandom(359);
        }
        esquive = irandom(60);
        rodeo = choose(60 + esquive, -(60 + esquive));
    }
    else if(x < 48){
        x = 48;
        if(direvel != -1){
            direvel = irandom(359);
        }
        esquive = irandom(60);
        rodeo = choose(60 + esquive, -(60 + esquive));
    }
    if(y > room_height - 48){
        y = room_height - 48;
        if(direvel != -1){
            direvel = irandom(359);
        }
        esquive = irandom(60);
        rodeo = choose(60 + esquive, -(60 + esquive));
    }
    else if(y < 192){
        y = 192;
        if(direvel != -1){
            direvel = irandom(359);
        }
        esquive = irandom(60);
        rodeo = choose(60 + esquive, -(60 + esquive));
    }
    depth = -y;
}

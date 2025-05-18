//devuelve texto modificado
//arg0: texto actual
//arg1: limite caracteres
//arg2: si puntos con espacio

var aux;
aux = argument0;

if(aux == "0" and !argument0){
    aux = "";
}

if(keyboard_key == vk_backspace){
    if(string_length(aux) < 2){
        aux = "";
    }
    else{
        aux = string_copy(aux, 1, string_length(aux) - 1);
    }
}
else if(string_length(aux) < argument1){
    switch(keyboard_key){
        case vk_space:
            if(argument2){
                aux += '.';
            }
        break;
        case ord('0'): case vk_numpad0:
            aux += '0'; break;
        case ord('1'): case vk_numpad1:
            aux += '1'; break;
        case ord('2'): case vk_numpad2:
            aux += '2'; break;
        case ord('3'): case vk_numpad3:
            aux += '3'; break;
        case ord('4'): case vk_numpad4:
            aux += '4'; break;
        case ord('5'): case vk_numpad5:
            aux += '5'; break;
        case ord('6'): case vk_numpad6:
            aux += '6'; break;
        case ord('7'): case vk_numpad7:
            aux += '7'; break;
        case ord('8'): case vk_numpad8:
            aux += '8'; break;
        case ord('9'): case vk_numpad9:
            aux += '9'; break;
    }
}

if(aux == "" and !argument0){
    aux = "0";
}

return(aux);

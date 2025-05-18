//devuelve texto modificado
//arg0: texto actual
//arg1: limite caracteres

var aux;
aux = argument0;

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
            aux += '_'; break;
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
        case ord('A'): aux += 'a'; break;
        case ord('B'): aux += 'b'; break;
        case ord('C'): aux += 'c'; break;
        case ord('D'): aux += 'd'; break;
        case ord('E'): aux += 'e'; break;
        case ord('F'): aux += 'f'; break;
        case ord('G'): aux += 'g'; break;
        case ord('H'): aux += 'h'; break;
        case ord('I'): aux += 'i'; break;
        case ord('J'): aux += 'j'; break;
        case ord('K'): aux += 'k'; break;
        case ord('L'): aux += 'l'; break;
        case ord('M'): aux += 'm'; break;
        case ord('N'): aux += 'n'; break;
        case ord('O'): aux += 'o'; break;
        case ord('P'): aux += 'p'; break;
        case ord('Q'): aux += 'q'; break;
        case ord('R'): aux += 'r'; break;
        case ord('S'): aux += 's'; break;
        case ord('T'): aux += 't'; break;
        case ord('U'): aux += 'u'; break;
        case ord('V'): aux += 'v'; break;
        case ord('W'): aux += 'w'; break;
        case ord('X'): aux += 'x'; break;
        case ord('Y'): aux += 'y'; break;
        case ord('Z'): aux += 'z'; break;
    }
}

return(aux);

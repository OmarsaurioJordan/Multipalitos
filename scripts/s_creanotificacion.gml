//crea una notificacion y la envia si es server
//arg0: color
//arg1: mensaje
//arg2: -1: a todos, sino id web a enviarle

if(string_char_at(argument1, 1) != "#"){
    var aux, mnsj;
    
    if(string_char_at(argument1, string_length(argument1)) == "#"){
        mnsj = argument1 + "***bot***";
    }
    else{
        mnsj = argument1;
    }
    
    aux = instance_create(0, 0, o_notificacion);
    aux.elcolor = argument0;
    aux.elmensaje = mnsj;
    
    if(!escliente){
        var fff;
        
        switch(argument0){
            case c_lime:
                fff = 0;
            break;
            case c_gray:
                fff = 1;
            break;
            case c_yellow:
                fff = 4;
            break;
            case c_red:
                fff = 3;
            break;
            default:
                fff = 2;
            break;
        }
        
        s_env23(fff, mnsj, argument2);
        
        fff = file_text_open_append("game_log.txt");
        file_text_write_string(fff, string_replace_all(mnsj, "#", " "));
        file_text_writeln(fff);
        file_text_close(fff);
    }
}
else if(!escliente){
    var fff, mnsj;
    
    if(string_char_at(argument1, string_length(argument1)) == "#"){
        mnsj = argument1 + "***bot***";
    }
    else{
        mnsj = argument1;
    }
    
    fff = file_text_open_append("game_log.txt");
    file_text_write_string(fff, "***bot***" + string_replace_all(mnsj, "#", " "));
    file_text_writeln(fff);
    file_text_close(fff);
}

with(o_control){
    ini_open("configuracion.ini");
    
    //mi pedido
    ini_write_string("pedido", "nombre", q_nombre);
    ini_write_string("pedido", "idioma", string(q_idioma));
    ini_write_string("pedido", "pelo", string(q_pelo));
    ini_write_string("pedido", "web", q_web);
    ini_write_string("pedido", "puerto", string(q_puerto));
    
    //globales
    ini_write_string("juego", "modalidad", string(porpuntos));
    ini_write_string("juego", "regeneracion", string(regeplus));
    
    //del menu
    ini_write_string("juego", "ordenanpcs", string(ordenanpcs));
    ini_write_string("menu", "ultimo", o_menu.pagina[o_menu.num]);
    if(window_get_fullscreen()){
        ini_write_string("juego", "full", "1");
    }
    else{
        ini_write_string("juego", "full", "0");
    }
    
    ini_close();
}

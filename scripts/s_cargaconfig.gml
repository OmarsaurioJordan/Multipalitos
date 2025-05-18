with(o_control){
    ini_open("configuracion.ini");
    
    //mi pedido
    q_nombre = ini_read_string("pedido", "nombre", "player");
    q_idioma = real(ini_read_string("pedido", "idioma", string(irandom(m_idiomas))));
    q_pelo = real(ini_read_string("pedido", "pelo", string(irandom(m_pelos))));
    q_web = ini_read_string("pedido", "web", "127.0.0.1");
    q_puerto = real(ini_read_string("pedido", "puerto", "1024"));
    
    //globales
    myid = -1;
    escliente = true;
    porpuntos = real(ini_read_string("juego", "modalidad", "1"));
    wingrupo = 100;//id del mejor
    winunidad = 100;//id del mejor
    regeplus = real(ini_read_string("juego", "regeneracion", "0"));
    
    //del menu
    ordenanpcs = real(ini_read_string("juego", "ordenanpcs", "1"));
    sonido = real(ini_read_string("juego", "sonido", "1"));
    audio_master_gain(sonido);
    if(ini_read_string("juego", "full", "1") == "1"){
        window_set_fullscreen(true);
    }
    else{
        window_set_fullscreen(false);
        s_ventana();
    }
    
    //aumentar descargas hostinger
    if(!ini_key_exists("menu", "ddd")){
        if(os_is_network_connected()){
            ini_write_string("menu", "ddd", "1");
            http_get("http://ojorcio.000webhostapp.com/mysql_omarsauriogames.php?ff=si&game=multipalitos&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");
        }
    }
    
    //ver si hay actualizacion
    if ini_read_string("menu", "nuevaversion", m_version) != m_version
    {
        nuevaversion = true;
    }
    else
    {
        nuevaversion = false;
        if ini_read_string("menu", "dia_revision_actu", "") != string(current_weekday) and
            os_is_network_connected()
        {
            ini_write_string("menu", "dia_revision_actu", string(current_weekday));
            leeversion = http_get("http://ojorcio.000webhostapp.com/mysql_omarsauriogames.php?ff=rv&game=multipalitos&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");
        }
    }
    
    ini_close();
}

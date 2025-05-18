//crea una imagen minimapa del mapa
//arg0: nombre del mapa .ini
//arg1: destino donde guardar imagen

var lienzo, i;
lienzo = surface_create(2640 * m_escalin, 2640 * m_escalin);
surface_set_target(lienzo);
draw_clear_alpha(make_colour_rgb(199, 211, 154), 1);
ini_open("mupa_" + argument0 + ".ini");

i = 0;
while(ini_key_exists("muros", "x" + string(i))){
    draw_sprite_ext(d_editor, 1,
        real(ini_read_string("muros", "x" + string(i), "0")) * 24 * m_escalin,
        real(ini_read_string("muros", "y" + string(i), "0")) * 24 * m_escalin,
        m_escalin, m_escalin, 0, -1, 1);
    i++;
}

i = 0;
while(ini_key_exists("arboles", "x" + string(i))){
    draw_sprite_ext(d_editor, 0,
        real(ini_read_string("arboles", "x" + string(i), "0")) * 24 * m_escalin,
        real(ini_read_string("arboles", "y" + string(i), "0")) * 24 * m_escalin,
        m_escalin, m_escalin, 0, -1, 1);
    i++;
}

i = 0;
while(ini_key_exists("bases", "x" + string(i))){
    draw_sprite_ext(d_editor, 2 + real(ini_read_string("bases", "t" + string(i), "0")),
        real(ini_read_string("bases", "x" + string(i), "0")) * 24 * m_escalin,
        real(ini_read_string("bases", "y" + string(i), "0")) * 24 * m_escalin,
        m_escalin, m_escalin, 0, -1, 1);
    i++;
}

ini_close();
surface_reset_target();

surface_save(lienzo, argument1);
surface_free(lienzo);

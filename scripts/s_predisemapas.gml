//verifica que existan los mapas predisennados

if(!file_exists("mupa_all_vs_all.ini")){
    file_copy("all_vs_all.ini", "mupa_all_vs_all.ini");
}
if(!file_exists("mupa_complex.ini")){
    file_copy("complex.ini", "mupa_complex.ini");
}
if(!file_exists("mupa_one_war.ini")){
    file_copy("one_war.ini", "mupa_one_war.ini");
}
if(!file_exists("mupa_simple.ini")){
    file_copy("simple.ini", "mupa_simple.ini");
}
if(!file_exists("mupa_team_war.ini")){
    file_copy("team_war", "mupa_team_war.ini");
}
if(!file_exists("mupa_trilogy.ini")){
    file_copy("trilogy.ini", "mupa_trilogy.ini");
}

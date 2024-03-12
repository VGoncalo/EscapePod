_zion_messages = ds_list_create();
index = 0;
_zionline01 = "Identify yourself pilot!";
_zionline02 = "We have no register or comment \nabout that calamity in Aquaris...";
_zionline02 = string_replace_all(_zionline02, "\\n", "\n");
_zionline03 = "Everything follows the protocol properly,\n what can you say in your defense?";
_zionline03 = string_replace_all(_zionline03, "\\n", "\n");
if(obj_controller.player_journals_captured > 6){
_zionline04 = "Very well... You have permission to\n doc in area XPTO-128";
}else{
_zionline04 = "What you say is an aberration!! We can't \nallow someone like you onboard!!";
}
_zionline04 = string_replace_all(_zionline04, "\\n", "\n");

ds_list_add(_zion_messages,_zionline01,_zionline02,_zionline03,_zionline04);
_talk = false;

_poddist = 0;
_poddir = 0;
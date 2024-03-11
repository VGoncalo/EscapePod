image_speed = 0;
image_xscale = 1;
image_yscale = 1;

aquaris_sate = aquaris_states.talk;
aquaris_previous_sate = aquaris_states.talk;
_aquaris_idle_timer = room_speed*2;

_hp = 10;
_sp = 2;


_talk = false;
_planet_lines = ds_list_create();
_line = 0;
_1line = "so you think you can escape human";
_2line = "You gonna join your fellow\nscientist at the botton of my sea";
_mes6 = string_replace_all(_2line, "\\n", "\n");
_3line = "hahahahhahah";
_4line = "Humans are so tasty";
_5line = "DO YOU think this is the end HUMAN??";
_6line = "I'm gonna visit you in your dreams!!";
_7line = "HAHAHAHA!!¡!!";
ds_list_add(_planet_lines,_1line,_2line,_3line,_4line,_5line,_6line,_7line);
_line_totalk = ds_list_find_value(_planet_lines,_line);

_poddir = 0;
_poddist = 0;

alarm[9] = room_speed * 10;

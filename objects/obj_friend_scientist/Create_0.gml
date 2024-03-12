_messages = ds_list_create();
_mes1 = "Hi there friend! So you\nwere right after all."
_mes1 = string_replace_all(_mes1, "\\n", "\n");
_mes2 = "They stricked the planet with \nnuclear energy without any warning.";
_mes2 = string_replace_all(_mes2, "\\n", "\n");
_mes3 = "We must flee as soon as possible,\nthe planet is already reacting!!";
_mes3 = string_replace_all(_mes3, "\\n", "\n");
_mes4 = "  you go ahead, I just\n  need to find my Journal...";
_mes4 = string_replace_all(_mes4, "\\n", "\n");
_mes5 = " the previous comrades already toke all the\nweapons to their scapepods, so rush yourself";
_mes5 = string_replace_all(_mes5, "\\n", "\n");
_mes6 = "I need my\njournal!";
_mes6 = string_replace_all(_mes6, "\\n", "\n");
ds_list_add(_messages,_mes1,_mes2,_mes3,_mes4,_mes5,_mes6);
index = 0;

_left = 0;
_right = 0;
_idle_timer = room_speed*5;
_dir = -1;
speed = 0;
_speed = 1;
alarm[0] = _idle_timer;
_speak = false;

_spawn_scientist = room_speed*choose(3,5,7);
alarm[3] = _spawn_scientist;
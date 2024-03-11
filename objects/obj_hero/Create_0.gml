_left = keyboard_check(vk_left);
_right = keyboard_check(vk_right);
_interact = keyboard_check(ord("X"));
_inpodcontrol = false;
_player_incontrol = true;
_speed = 3;

_speak = false;
hero_lines = ds_list_create();
heroline01 = "I need to get out of here!!";
heroline02 = "I just need to reach the\nnearby Imperial Space Station";
heroline02 = string_replace_all(heroline02, "\\n", "\n");
heroline03 = "Here is my pod";
heroline04 = "Alrigh the radar just computed\n the shortest route!";
heroline04 = string_replace_all(heroline04, "\\n", "\n");
heroline05 = "Here I go!!"
ds_list_add(hero_lines,heroline01,heroline02,heroline03,heroline04,heroline05);
index = 0;
//obj_camera._follow_hero = false;
with(obj_hero){_inpodcontrol=false;_player_incontrol = false;}
instance_destroy();
room_goto(game_rooms.rm_gameover);
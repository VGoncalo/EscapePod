if(obj_controller._isgameover){
	_gameover = "Game Over";
}else{
	_gameover = "Thanks for playing!!"
}



_gameoverx = 325;
_gameovery = 125;

_amountofhunters = obj_controller.player_amount_enemies_destroyed;
_amountofjournals = obj_controller.player_journals_captured;
_timeingame = 0;

alarm[0] = room_speed;
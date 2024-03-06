if(collision_circle(x,y,64,obj_hero,1,1)){
	_speak = true;
	alarm[0] = _idle_timer;
	var _continue = keyboard_check_released(ord("X"));
	if(_continue and index<5){index++;}
}else{_speak = false;}
show_debug_message("alamr 2")
//show_debug_message(_ray)
if(_ray=false){
	show_debug_message("ray to true")
	_ray = true;
	alarm[1] = 2*room_speed;
	alarm[2] = 4*room_speed;
}else if(_ray=true){
	show_debug_message("ray to false")
	alarm[2] = _nuclear_ray;
	alarm[1] = -1;
	_ray = false;
}

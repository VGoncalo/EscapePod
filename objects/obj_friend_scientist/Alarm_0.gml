if(_dir == -1){
	_left = 1;_right = 0;
	speed = -1;
}
if(_dir == 1){
	_left = 0;_right = 1;
	speed = 1;
}else{_left = 0;_right = 0;}
alarm[1] = room_speed*random_range(1,2);
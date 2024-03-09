if(!_hero_ready){
	move_towards_point(x+32,y-32,1);
	instance_create_layer(x,y,"Instances",obj_radar);
	alarm[1] = room_speed*2;
	_hero_ready = true;
}
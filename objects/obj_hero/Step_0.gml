if(_player_incontrol){
	_left = keyboard_check(vk_left);
	_right = keyboard_check(vk_right);
	_interact = keyboard_check(ord("X"));


	if(_left and !collision_point(x-16,y,obj_wall,1,1)){
		object_set_sprite(obj_hero,spr_hero_left);
		move_towards_point(x-128,y,_speed);
	}else if(_right  and !collision_point(x+16,y,obj_wall,1,1)){
		object_set_sprite(obj_hero,spr_hero_right);
		move_towards_point(x+128,y,_speed);
	}else{speed = 0;}
}else{
	if(y=14990){_player_incontrol=true;}
	if(y=16076){_speak=true;alarm[0] = room_speed*4;index=0;}
	if(y=15498){_speak=true;alarm[0] = room_speed*4;index=1;}
	if(y=15085){_speak=true;alarm[0] = room_speed*4;index=2;}
}
if(_inpodcontrol){
	x = obj_pod.x;
	y = obj_pod.y;
	if(y<1000){_speak=true;alarm[0] = room_speed*4;index=4;}
	if(!instance_exists(obj_pod)){room_goto(game_rooms.rm_gameover);}
}

_left = keyboard_check(vk_left);
_right = keyboard_check(vk_right);
_interact = keyboard_check(ord("X"));


if(_left and !collision_point(x-16,y,obj_wall,1,1)){
	object_set_sprite(obj_hero,spr_hero_left);
	move_towards_point(x-128,y,2);
}else if(_right  and !collision_point(x+16,y,obj_wall,1,1)){
	object_set_sprite(obj_hero,spr_hero_right);
	move_towards_point(x+128,y,2);
}else{speed = 0;
}
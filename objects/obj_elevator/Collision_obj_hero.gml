obj_hero._player_incontrol = false;
with(obj_hero){
	move_towards_point(x,y-512,1);
	sprite_index = spr_hero_front;
}
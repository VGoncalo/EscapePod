if(_player_incontrol){
	if(_left){
		sprite_index = spr_hero_left;
	}else if(_right){
		sprite_index = spr_hero_right;
	}else if(speed=0){
		sprite_index = spr_hero_front;
	}
}
draw_self();
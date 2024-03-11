if(_player_incontrol){
	if(_left){
		sprite_index = spr_hero_left;
	}else if(_right){
		sprite_index = spr_hero_right;
	}else if(speed=0){
		sprite_index = spr_hero_front;
	}
}

if(_speak){
	var _message = ds_list_find_value(hero_lines,index);
	var _lenght = string_length(_message);
	
	if(index==0){
		draw_set_color(c_black);
		draw_rectangle(x-_lenght*12,y-152,x-64,y-88,0);
		draw_set_colr(c_white);
		draw_text(x-_lenght*12+8,y-148,_message);
	}else if(index==1){
		draw_set_color(c_black);
		draw_rectangle(x+64,y-152,x+_lenght*12,y-88,0);
		draw_set_color(c_white);
		draw_text(x+72,y-148,_message);
	}else{
		draw_set_color(c_black);
		draw_rectangle(x-_lenght*12,y-128,x-32,y-88,0);
		draw_set_color(c_white);
		draw_text(x-_lenght*12+8,y-120,_message);
	}
	//if index <= 4 draw_sprite(spr_interact_btn,0,x+_lenght/2*10+8,y-88);
}

draw_self();
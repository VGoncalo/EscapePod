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
		draw_rectangle(x-_lenght*12,y-152,x-128,y-88,0);
		draw_set_color(c_white);
		draw_text(x-_lenght*12+8,y-150,_message);
	}else if(index==1){
		draw_set_color(c_black);
		draw_rectangle(x+192,y-152,x+_lenght*12,y-88,0);
		draw_set_color(c_white);
		draw_text(x+200,y-150,_message);
	}else if(index==2){
		draw_set_color(c_black);
		draw_rectangle(x-_lenght*10,y-152,x-32,y-80,0);
		draw_set_color(c_white);
		draw_text(x-_lenght*10+8,y-150,_message);
	}else if(index==4){
		draw_set_color(c_black);
		draw_rectangle(x+192,y-152,x+_lenght*12,y-88,0);
		draw_set_color(c_white);
		draw_text(x+200,y-150,_message);
	}
	if(index==3 && _speakline04){
		draw_set_color(c_black);
		draw_rectangle(x+192,y-152,x+_lenght*12,y-88,0);
		draw_set_color(c_white);
		draw_text(x+200,y-150,_message);
	}
}

draw_self();
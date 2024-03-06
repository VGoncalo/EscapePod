if(speed<0){
	sprite_index = spr_scientist_left;
}else if(speed>0){
	sprite_index = spr_scientist_right;
}else if(speed=0){
	sprite_index = spr_scientist_front;
}

draw_self();

if(_speak){
	var _message = ds_list_find_value(_messages,index);
	var _lenght = string_length(_message);
	
	
	draw_set_color(c_black);
	draw_rectangle(x-_lenght/3*8,y-152,x+_lenght/2*10,y-88,0);
	draw_set_color(c_white);
	draw_text(x-_lenght/3*8+8,y-150,_message);
	if index <= 4 draw_sprite(spr_interact_btn,0,x+_lenght/2*10+8,y-88);
}
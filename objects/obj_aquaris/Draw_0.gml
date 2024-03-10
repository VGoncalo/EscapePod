if(_talk && aquaris_sate == aquaris_states.talk){
	var _message = ds_list_find_value(_planet_lines,_line);
	var _lenght = string_length(_message);
	
	draw_set_color(c_black);
	draw_rectangle(x-_lenght/3*8,y-152,x+_lenght/2*10,y-88,0);
	draw_set_color(c_white);
	draw_text(x-_lenght/3*8+8,y-150,_message);
	draw_sprite(spr_interact_btn,0,x+_lenght/2*10+8,y-88);
}

draw_self();
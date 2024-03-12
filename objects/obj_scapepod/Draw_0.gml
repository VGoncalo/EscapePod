if(_talk){
	var _message = ds_list_find_value(plot_lines,index);
	var _lenght = string_length(_message);
	

	draw_set_color(c_black);
	draw_rectangle(x+128,y-128,x+_lenght*10,y-76,1);
	draw_set_color(c_white);
	draw_text(x+132,y-122,_message);
	draw_sprite(spr_interact_btn,0,x+_lenght*10+8,y-76);
}



draw_self();
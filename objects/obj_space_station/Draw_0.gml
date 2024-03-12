if(_talk){
	var _message = ds_list_find_value(_zion_messages,index);
	var _lenght = string_length(_message);
	
	var _mesx = lengthdir_x(_poddist,_poddir)/2;
	var _mesy = lengthdir_y(_poddist,_poddir)/2;
	
	if(_poddir>180 && _poddir<360){_mesx=_mesx*2;_mesy=_mesy*2;}
	
	draw_set_color(c_black);
	draw_rectangle(x+_mesx-_lenght/2*8,y+_mesy-184,x+_mesx+_lenght/2*10,y+_mesy-120,0);
	draw_set_color(c_white);
	draw_text(x+_mesx-_lenght/2*8+8,y+_mesy-150,_message);
	draw_sprite(spr_interact_btn,0,x+_mesx+_lenght*10+8,y+_mesy-116);
}

draw_self();
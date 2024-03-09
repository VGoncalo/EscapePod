if(_ray){
	show_debug_message("alarm1")
	var _backg = layer_background_get_id("Background_2");
	var _is_visible = layer_background_get_visible(_backg);
	show_debug_message(_is_visible);
	if(!_is_visible){
		layer_background_visible(_backg,false);
	}else{
		layer_background_visible(_backg,true);
	}
	alarm[1] = room_speed;
}
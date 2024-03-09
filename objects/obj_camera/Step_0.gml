if(room_get_name(room)=="rm_space" or room_get_name(room)=="rm_merchant" or room_get_name(room)=="rm_asteroids_field"){
	var _xx = obj_scapepod.x-(display_width/2);
	var _yy = obj_scapepod.y-(display_height/2);

	var _pod_direction = obj_scapepod.direction;

	var _x = _xx + lengthdir_x(312,_pod_direction);
	var _y = _yy + lengthdir_y(312,_pod_direction);

	camera_set_view_pos(view_camera[0],_x,_y);	
	
	if(_shake){
		shake_time -= 1;
		var _xval = camera_get_view_x(view_camera[0])+choose(-shake_magnitude,shake_magnitude);
		var _yval = camera_get_view_y(view_camera[0])+choose(-shake_magnitude,shake_magnitude);
		camera_set_view_pos(view_camera[0], _xval, _yval);
	
		if(shake_time < 0){
			shake_magnitude -= shake_fade;
		
			if(shake_magnitude <= 0){
				camera_set_view_pos(view_camera[0],_xx,_yy);
				shake = false;
			}
		}
	}
}else if(room_get_name(room)=="rm_solarius"){
	var _hero = object_exists(obj_hero);
	if(_hero && !_hero_in_pod){
		var _xx = obj_hero.x-(display_width/2);
		var _yy = obj_hero.y-(display_height/2);
		camera_set_view_pos(view_camera[0],_xx,_yy);
		view_set_visible(0,true);
		
		if(_shake){
			shake_time -= 1;
			var _xval = camera_get_view_x(view_camera[0])+choose(-shake_magnitude,shake_magnitude);
			var _yval = camera_get_view_y(view_camera[0])+choose(-shake_magnitude,shake_magnitude);
			camera_set_view_pos(view_camera[0], _xval, _yval);
	
			if(shake_time < 0){
				shake_magnitude -= shake_fade;
		
				if(shake_magnitude <= 0){
					camera_set_view_pos(view_camera[0],_xx,_yy);
					shake = false;
				}
			}
		}
	}
	if(_hero_in_pod){
		//show_debug_message("change camera");
		var _xx = obj_hero.x-(display_width/2);
		var _yy = obj_hero.y-(display_height/2);
		camera_set_view_pos(view_camera[2],_xx,_yy);
		view_set_visible(2,true);
	}
}


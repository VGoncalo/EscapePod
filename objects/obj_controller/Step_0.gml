if(room_get_name(room) == "rm_space"){
	x = obj_scapepod.x;
	y = obj_scapepod.y;

	if(ontrack_jumps < 1){
		if(ontrack_jump_direction = jump_directions.east){
			ontrack_jump_direction = choose(jump_directions.east,jump_directions.north,jump_directions.south);
		}
		if(ontrack_jump_direction = jump_directions.north){
			ontrack_jump_direction = choose(jump_directions.east,jump_directions.north,jump_directions.west);
		}
		if(ontrack_jump_direction = jump_directions.west){
			ontrack_jump_direction = choose(jump_directions.south,jump_directions.north,jump_directions.west);
		}
		if(ontrack_jump_direction = jump_directions.south){
			ontrack_jump_direction = choose(jump_directions.east,jump_directions.west);
		}
		ontrack_jumps = ceil(random_range(2,5));
	}

	if(hero_hunger >= 20 and alarm[0]=-1){
		var _distance_tospawn = point_distance(x,y,x+456,y+356);
		var _direction_tospawn = random(360);
		var _x_tospawn = lengthdir_x(_distance_tospawn,_direction_tospawn);
		var _y_tospawn = lengthdir_y(_distance_tospawn,_direction_tospawn);
		//show_debug_message("spawn portal")
		var _hunter_illusion = instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_portal);
		alarm[0] = hunter_spawner_time*room_speed;
	}
}else if(room_get_name(room) == "rm_space"){
	// screen shake while whith hero
}
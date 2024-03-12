if(room_get_name(room) == room_get_name(game_rooms.rm_space) or room_get_name(room) == room_get_name(game_rooms.rm_space_2) or room_get_name(room) == room_get_name(game_rooms.rm_asteroids_field)){
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
			if(room_get_name(room) == room_get_name(game_rooms.rm_space_2)){ontrack_jump_direction = jump_directions.east}
		}
		if(ontrack_jump_direction = jump_directions.south){
			ontrack_jump_direction = choose(jump_directions.east,jump_directions.west);
		}
		ontrack_jumps = ceil(random_range(2,5));
	}
	if(hero_hunger >= _hunter_treshold and alarm[0]=-1 and obj_scapepod.pod_state!=pod_states.idle){
		var _distance_tospawn = point_distance(x,y,x+456,y+356);
		var _direction_tospawn = random(360);
		var _x_tospawn = lengthdir_x(_distance_tospawn,_direction_tospawn);
		var _y_tospawn = lengthdir_y(_distance_tospawn,_direction_tospawn);
		//show_debug_message("spawn portal")
		var _hunter_illusion = instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_portal);
		alarm[0] = hunter_spawner_time*room_speed;
		if(room_get_name(room) == room_get_name(game_rooms.rm_space_2) or hero_hunger>15){
			var _i = random_range(0,2);
			for(var j=0; j<=_i;j++){
				var _distance_tospawn_m = point_distance(x,y,x+512,y+512);
				var _direction_tospawn_m = random(360);
				var _x_tospawn_m = lengthdir_x(_distance_tospawn_m,_direction_tospawn_m);
				var _y_tospawn_m = lengthdir_y(_distance_tospawn_m,_direction_tospawn_m);
				var _hunter_illusion = instance_create_layer(x+_x_tospawn_m,y+_y_tospawn_m,"Instances",obj_portal);
			}
		}
	}
}else if(room_get_name(room) == "rm_merchant"){
	x = obj_scapepod.x;
	y = obj_scapepod.y;
	
	//show_debug_message(depth)
}else if(room_get_name(room) == "rm_gameover"){
	
	layer_destroy_instances("Instances");
	layer_destroy_instances("Instances_Bellow");
	layer_destroy_instances("Instances_Planet");
	layer_destroy_instances("Asteroid_Field");
	//layer_set_visible("Asteroid_Field",false);
	layer_destroy_instances("Asteroid_Field_1");
	//layer_set_visible("Asteroid_Field_1",false);
	layer_destroy_instances("Asteroid_Field_2");
	//layer_set_visible("Asteroid_Field_2",false);
	layer_destroy_instances("Asteroid_Field_3");
	//layer_set_visible("Asteroid_Field_3",false);
	layer_destroy_instances("Asteroid_Field_4");
	//layer_set_visible("Asteroid_Field_4",false);
	instance_destroy(obj_scapepod);
}
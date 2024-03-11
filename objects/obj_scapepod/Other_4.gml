if(room_get_name(room) == room_get_name(game_rooms.rm_asteroids_field)){
	if(object_exists(Obj_pod_rmspawn)){
		x = Obj_pod_rmspawn.x;
		y = Obj_pod_rmspawn.y;
		direction = Obj_pod_rmspawn.direction;
	}
	speed = 1;
	//display message to player
	
}else if(room_get_name(room) == room_get_name(game_rooms.rm_space_2)){
	layer_add_instance("Instance_pod",id);
	speed = 1;
}else if(room_get_name(room) == room_get_name(game_rooms.rm_merchant)){
	if(object_exists(Obj_pod_rmspawn)){
		x = Obj_pod_rmspawn.x;
		y = Obj_pod_rmspawn.y;
		direction = Obj_pod_rmspawn.direction;
	}
	speed = 1;
	
	if(object_exists(obj_aquaris)){
		var _aquarisx = obj_aquaris.x;
		var _aquarisy = obj_aquaris.y;
		var _dst_to_aqu = distance_to_object(obj_aquaris);
	}
}else if(room_get_name(room) ==  room_get_name(game_rooms.rm_gameover)){
	with(obj_camera){instance_destroy();}
	with(obj_radar){instance_destroy();}
	
	instance_destroy();
}
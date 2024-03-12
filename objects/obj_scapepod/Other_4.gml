if(room_get_name(room) == room_get_name(game_rooms.rm_asteroids_field)){
	if(object_exists(Obj_pod_rmspawn)){
		x = Obj_pod_rmspawn.x;
		y = Obj_pod_rmspawn.y;
		direction = Obj_pod_rmspawn.direction;
	}
	pod_state = pod_states.idle;
	index = 3;
	_talk = true;
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
}else if(room_get_name(room) ==  room_get_name(game_rooms.rm_gameover)){
	with(obj_camera){instance_destroy();}
	with(obj_radar){instance_destroy();}
	
	instance_destroy();
}
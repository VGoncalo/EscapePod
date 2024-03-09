if(room_get_name(room) == "rm_asteroids_field"){
	speed = 1;
	//display message to player
}
if(room_get_name(room) == "rm_merchant"){
	speed = 1;
	if(object_exists(obj_aquaris)){
		var _aquarisx = obj_aquaris.x;
		var _aquarisy = obj_aquaris.y;
		var _dst_to_aqu = distance_to_object(obj_aquaris);
		
		if(object_exists(Obj_pod_rmspawn)){
			x = Obj_pod_rmspawn.x;
			y = Obj_pod_rmspawn.y;
		}
		var _dir_to_aqu = point_direction(x,y,_aquarisx,_aquarisy);
		direction = _dir_to_aqu;
	}
}
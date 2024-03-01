if(collision_circle(x,y,_radar*2,obj_scapepod,1,1)){
	var _dir_topod = point_direction(x,y,obj_scapepod.x,obj_scapepod.y);
	var _dist_topod = point_distance(x,y,obj_scapepod.x,obj_scapepod.y)
	var _dpod = distance_to_object(obj_scapepod);
	var _topodx = lengthdir_x(_dist_topod,_dir_topod);
	var _topody = lengthdir_y(_dist_topod,_dir_topod);
	
	direction = _dir_topod;
	move_towards_point(obj_scapepod.x,obj_scapepod.y,_speed);
	
	if(_dpod < _radar*1.6){
		if(alarm[0] = -1){
			var _water_bullet = instance_create_layer(x,y,"Instances",obj_water_bullet);
			_water_bullet.direction = direction;
			_water_bullet.image_angle = direction;
			alarm[0] = _shoot_timer;
		}
	}
	if(_dpod < _radar or _dpod > _radar*2.5){
		speed = 0;
	}
}

image_angle = direction;
/// @description basic shoot
image_angle += 0.5;
image_speed = 0;
sprite_index = spr_aquaris;
move_towards_point(obj_scapepod.x,obj_scapepod.y,_sp*3);
show_debug_message("basic shot");

if(alarm[1] = -1){
	var _water_bolt = instance_create_layer(x,y,"Instances",obj_water_bullet);
	_water_bolt.direction = _poddir;
	_water_bolt.image_angle = _poddir;
	alarm[1] = room_speed/2;
}


/// @description arm shoot
image_angle += 0.5;
image_speed = 0;
sprite_index = spr_aquaris;
move_towards_point(obj_scapepod.x,obj_scapepod.y,_sp);
show_debug_message("arm shoot");

//for(var i=0; i<10; i++){
	var _water_bolt = instance_create_layer(x,y,"Instances",obj_water_bullet);
	_water_bolt.direction = _poddir;
	_water_bolt.image_angle = _poddir;
//}
if(alarm[2]=-1){alarm[2] = room_speed*3}


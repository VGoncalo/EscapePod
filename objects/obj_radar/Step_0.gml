if(object_exists(obj_poddebris)){
	if alarm[0]=-1 effect_create_above(ef_ring,x,y,8,c_green);alarm[0]=room_speed;
}
if(object_exists(obj_ship_hunter) or object_exists(obj_ship_hunter_I)){
	if alarm[1]=-1 effect_create_above(ef_ring,x,y,8,c_red);alarm[1]=room_speed/2;
}
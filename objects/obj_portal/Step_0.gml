if(image_index>=48){
	instance_destroy();
}
if(image_index=24){
	var _distance_tospawn = point_distance(x,y,x+64,y+64);
	var _direction_tospawn = random(180);
	var _x_tospawn = lengthdir_x(_distance_tospawn,_direction_tospawn);
	var _y_tospawn = lengthdir_y(_distance_tospawn,_direction_tospawn);
	var _hunter = instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_ship_hunter);
}
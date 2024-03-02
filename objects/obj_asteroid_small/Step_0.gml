image_angle += _rotation_sp;
if(alarm[0] != -1){
	speed -= 0.01;
}

if(place_meeting(x,y,obj_asteroid)){
	var _ast = instance_nearest(x,y,obj_asteroid);
	_ast.speed = 1;
	_ast.direction += direction;
	speed = 0;
}
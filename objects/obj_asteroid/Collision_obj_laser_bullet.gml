if(_scale > 1){
	var _ast1 = instance_create_layer(x,y,"Instances",obj_asteroid_small);
	_ast1.speed = 2;
	_ast1.direction = random(360);
	
	var _ast2 = instance_create_layer(x,y,"Instances",obj_asteroid_small);
	_ast2.speed = 2;
	_ast2.direction = random(360);
}

instance_destroy();
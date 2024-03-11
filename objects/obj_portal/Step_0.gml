if(image_index>=48){
	instance_destroy();
}
if(image_index=25){
	var _distance_tospawn = point_distance(x,y,x+64,y+64);
	var _direction_tospawn = random(180);
	var _x_tospawn = lengthdir_x(_distance_tospawn,_direction_tospawn);
	var _y_tospawn = lengthdir_y(_distance_tospawn,_direction_tospawn);
	
	var _hunter = instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_ship_hunter);
	if(_hero_hunger > 80){
		var _hunter = choose(
			instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_ship_hunter),
			instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_ship_hunter_I)
		)
	}else if(_hero_hunger > 160){
		var _hunter = choose(
			instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_ship_hunter),
			instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_ship_hunter_I),
			instance_create_layer(x+_x_tospawn,y+_y_tospawn,"Instances",obj_ship_hunter_I),
		)
	}
}else if(image_index>5 and image_index<40){
	var _asteroidtoeat = collision_circle(x,y,256,obj_asteroid,1,1);
	if(_asteroidtoeat){
		with(_asteroidtoeat){
			move_towards_point(obj_portal.x,obj_portal.y,8);
			image_xscale -= 0.3;
			image_yscale -= 0.3;
		}
		instance_destroy(collision_circle(x,y,32,obj_asteroid,1,1));
	}
	var _tinyasteroidtoeat = collision_circle(x,y,256,obj_asteroid_small,1,1);
	if(_tinyasteroidtoeat){
		with(_tinyasteroidtoeat){
			move_towards_point(obj_portal.x,obj_portal.y,8);
		}
		instance_destroy(collision_circle(x,y,32,obj_asteroid_small,1,1));
	}
}
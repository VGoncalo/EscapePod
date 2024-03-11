if(alarm[0] = -1){
	
	for(var j=0; j<20;j++){
		var _inc = 25*j;
		var _water_bolt = instance_create_layer(x,y,"Instances",obj_water_bullet);
		_water_bolt.direction = direction + _inc;
		_water_bolt.image_angle = direction+ _inc;
	}
	alarm[0] = room_speed*10;
}
/// @description Idle
image_angle += 25;
image_speed = 0;
sprite_index = spr_aquaris;
direction = image_angle;
_hp += 0.01;

if(alarm[1] = -1){
	
	for(var j=0; j<20;j++){
		var _inc = 25*j;
		var _water_bolt = instance_create_layer(x,y,"Instances",obj_water_bullet);
		_water_bolt.direction = direction + _inc;
		_water_bolt.image_angle = direction+ _inc;
	}
	alarm[1] = room_speed*5;
}

if(alarm[3] = -1){
	alarm[3] = _aquaris_idle_timer*choose(1,2);
}
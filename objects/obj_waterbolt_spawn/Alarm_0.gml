randomize();
var _amount_bolt = choose(2,3,5);
for(var i = 0 ; i < _amount_bolt ; i++){
	choose(
		instance_create_layer(random_range(128,4250)+i*32,room_height-random(64)+i*8,"Instances",obj_water_bullet_aquaris),
		instance_create_layer(random_range(128,4350)+i*32,room_height-random(64)+i*8,"Instances_front",obj_water_bullet_aquaris)
	);
}
screenshake(1,64,4);
alarm[0] = room_speed * random(5);
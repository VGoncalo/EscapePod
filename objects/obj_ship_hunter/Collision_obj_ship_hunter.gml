randomize();

var _i = random_range(2,4);

for(var j=0; j<_i; j++){
	
	_rdir = random(360);
	_rrang = random_range(64,512);
	_xx = lengthdir_x(_rrang,_rdir);
	_yy = lengthdir_y(_rrang,_rdir);
	//implement 
	var _s = "water explosion"+string(j);
	show_debug_message(_s);
	alarm_set(j,room_speed*random(2));
	
}

if(!instance_exists(obj_ship_hunter_I)){
	var _improved_hunter = instance_create_layer(x,y,"Instances",obj_ship_hunter_I);
}

instance_destroy()
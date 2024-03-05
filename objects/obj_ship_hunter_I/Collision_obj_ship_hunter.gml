randomize();

var _i = random_range(2,5);

for(var j=0; j<_i; j++){
	show_debug_message("merge them")
	var _rdir = random(360);
	var _rrang = random_range(128,312);
	var _xx = lengthdir_x(_rrang,_rdir);
	var _yy = lengthdir_y(_rrang,_rdir);
	//implement 
	instance_create_layer(_xx,_yy,"Instances",obj_water_exp);
	
}
var _improved_hunter = instance_create_layer(x,y,"Instances",obj_ship_hunter_I);
_improved_hunter.hp = 3;
_improved_hunter._speed = 8;
_improved_hunter._lv = 1;
instance_destroy()
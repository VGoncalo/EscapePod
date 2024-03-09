direction = obj_scapepod.direction;
if(_scale >= 1){speed = 0.5}else{speed = 1;}
if(_scale > 1){
	obj_camera._shake = true;
	screenshake(1,32,8);
}
motion_add(direction,speed);
var _pod = object_exists(obj_scapepod);
if(_pod){
	_poddir = point_direction(x,y,obj_scapepod.x,obj_scapepod.y);
	_poddist = point_distance(x,y,obj_scapepod.x,obj_scapepod.y);

	if(_poddist<756 && index==0){
		obj_scapepod.pod_state = pod_states.idle;
		_talk=true;
	}
	var _k = keyboard_check(ord("X"));
	if(_k && obj_scapepod.pod_state == pod_states.idle && alarm[0]=-1){
		index++;
		alarm[0]=room_speed;
	}
	
	if(index>=5 && obj_controller._isgameover){
		_talk=false;
		obj_controller._isgameover = false;
		alarm[1]=room_speed*2;
		
	}
}
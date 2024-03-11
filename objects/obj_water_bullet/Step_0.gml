if(place_meeting(x,y,obj_scapepod)){
	obj_scapepod.pod_health -= 15;
	screenshake(1,12,4);
	instance_destroy();
}
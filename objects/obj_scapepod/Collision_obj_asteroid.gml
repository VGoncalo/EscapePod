if(speed > 2){pod_health -= speed * 0.25;}
if(speed > 15){pod_health -= speed * 0.50;}
if(speed > 30){pod_health -= speed * 0.75;}
if(speed > 45){
	var _ast = collision_point(x,y,obj_asteroid,0,1);
	instance_destroy(_ast);
	pod_health = 0;
}

speed = 0;
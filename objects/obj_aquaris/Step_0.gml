var _pod = object_exists(obj_scapepod);
if(_pod){
	_poddir = point_direction(x,y,obj_scapepod.x,obj_scapepod.y);
	_poddist = point_distance(x,y,obj_scapepod.x,obj_scapepod.y);
}

switch(aquaris_sate){
	case aquaris_states.talk:
		event_user(aquaris_sate);
	break;
	case aquaris_states.basicshoot:
		event_user(aquaris_sate);
	break;
	case aquaris_states.idle:
		event_user(aquaris_sate);
	break;
	case aquaris_states.armshoot:
		event_user(aquaris_sate);
	break;
	case aquaris_states.dead:
		event_user(aquaris_sate);
	break;
	case aquaris_states.packman:
		event_user(aquaris_sate);
	break;
}
//show_debug_message(_hp);
direction = image_angle;
if _hp < 0 aquaris_sate=aquaris_states.dead;
if(collision_circle(x,y,256,obj_scapepod,1,1) and aquaris_sate!=aquaris_states.dead){
	aquaris_sate = aquaris_states.packman;
}
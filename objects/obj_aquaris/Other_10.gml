/// @description Talk state
if(_poddist>128 and _poddist<916){
	_talk = true;
	obj_scapepod.pod_state = pod_states.idle;
}

var _yes = keyboard_check_pressed(ord("X"));

if(_yes){
	_line++;
	if(_line == 2){
		aquaris_sate = aquaris_states.idle;
		obj_scapepod.pod_state = pod_states.free_navigation;
	}
	if(_line == 7){
		instance_destroy();
	}
}
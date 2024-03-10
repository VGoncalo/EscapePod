/// @description Talk state
if(_poddist>128 and _poddist<916){
	_talk = true;
}

var _yes = keyboard_check_pressed(ord("X"));

if(_yes){
	_line++;
	if(_line == 2){
		aquaris_sate = aquaris_states.idle;
	}
	if(_line == 7){
		instance_destroy();
	}
}
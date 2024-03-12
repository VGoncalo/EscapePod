/// @description Idle State Logic
speed = 0;

var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
image_angle += (_left - _right)*pod_rotation_speed;
if room_get_name(room) != room_get_name(game_rooms.rm_merchant) _talk = true;

var _x = keyboard_check(ord("X"));
if(room_get_name(room) != room_get_name(game_rooms.rm_zion_spacestation)){
	if(_x and alarm[8]=-1){	
		if(index<=1){
			index++;
			alarm[8] = room_speed/2;
		}else{
			pod_state = pod_states.free_navigation;
			_talk = false;
		}
	}
}else{
	_talk = false;
}
if(_hero_inside && _hero_ready && alarm[0]=-1 && alarm[1]=-1){
	var _front = keyboard_check(vk_up);
	var _break = keyboard_check(vk_down);
	var _right = keyboard_check(vk_right);
	var _left = keyboard_check(vk_left);
	
	image_angle += (_left - _right)*pod_rotation_speed;
	direction = image_angle;
	if(_front){
		motion_add(direction, pod_speed_navigation);
	
	}
	if(_break){
		motion_add(direction, -pod_speed_navigation*2);
	}
	if speed > 20 speed = 20;
	if speed < 0 speed = 0;
	move_wrap(true,false,0);
}
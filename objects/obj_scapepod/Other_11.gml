/// @description Free Navigation State Logic
//show_debug_message("free navigation state")
var _front = keyboard_check(vk_up);
var _break = keyboard_check(vk_down);
var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);

var _item_1 = keyboard_check_pressed(ord("S"));
var _item_2 = keyboard_check_pressed(ord("D"));
var _shoot_laser = keyboard_check(ord("X"));

// pod movement
image_angle += (_left - _right)*pod_rotation_speed;
if(_left){image_index=1;}
if(_right){image_index=2;}
if(!_right or !_left){image_index=0}

if(_front){
	motion_add(direction, pod_speed_navigation);
}
if(_break){
	motion_add(direction, -pod_speed_navigation*2);
}

if(_shoot_laser && not(_break)){
	if(alarm[0] = -1){
		var _left_laser = instance_create_layer(x,y,"Instances",obj_laser_bullet);
		_left_laser.direction = direction;
		_left_laser.image_angle = direction;
		
		alarm[0] = room_speed*0.5;
	}
}

if(speed > 45 && !_front){speed -= 0.5;}
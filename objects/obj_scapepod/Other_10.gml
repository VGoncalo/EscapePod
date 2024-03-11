/// @description Idle State Logic
speed = 0;

var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
image_angle += (_left - _right)*pod_rotation_speed;


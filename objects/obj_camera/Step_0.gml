//camera_set_view_pos(view_camera[0],obj_scapepod.x-(display_width/2),obj_scapepod.y-(display_height/2));
var _xx = obj_scapepod.x-(display_width/2);
var _yy = obj_scapepod.y-(display_height/2);

var _pod_direction = obj_scapepod.direction;

var _x = _xx + lengthdir_x(312,_pod_direction);
var _y = _yy + lengthdir_y(312,_pod_direction);


camera_set_view_pos(view_camera[0],_x,_y);

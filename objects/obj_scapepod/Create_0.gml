pod_health = 100;
pod_speed_navigation = 1;
pod_rotation_speed = 3;
pod_speed_tunneling = 1;
pod_navigation_energy = 100;

pod_item_left = "empty";
pod_item_right = "empty";

pod_state = pod_states.free_navigation;

guiwidth = display_get_gui_width();
guiheight = display_get_height();

alarm[0] = -1; // laser timer
alarm[1] = room_speed*global.hunger_coef; // hunger timer

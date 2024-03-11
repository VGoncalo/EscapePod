if !object_exists(obj_controller) instance_create_layer(x,y,"Instances_pod",obj_controller);
if !object_exists(obj_camera) instance_create_layer(x,y,"Instances_pod",obj_camera);
if !object_exists(obj_radar) instance_create_layer(x,y,"Instances_pod",obj_radar);

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
alarm[9] = -1;

_talk = false;
plot_lines = ds_list_create();
hero_line01 = "Alright, the ship already calculated the route to Imperial Station,\nI just need to perform jumps into the blue triangle direction";
hero_line01 = string_replace_all(hero_line01, "\\n", "\n");
hero_line02 = "Let's get out of here!!";
hero_line03 = "Oh man, I'm hungry now...";
hero_line04 = "A journal over there!!";
hero_line05 = "How come I didn't notice their arrival??";
ds_list_add(plot_lines,hero_line01,hero_line02,hero_line03,hero_line04);
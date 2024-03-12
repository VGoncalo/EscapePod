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
_talkJumpInfo = true;
index=0;
plot_lines = ds_list_create();
hero_line01 = "The PurpulsionJumpTechnolog works when\nthe pod surpasses the 50 half/lightspeed";
hero_line01 = string_replace_all(hero_line01, "\\n", "\n");
hero_line02 = "I just need to travel at that speed for\na few seconds to make the pod 'jump'";
hero_line02 = string_replace_all(hero_line02, "\\n", "\n");
hero_line03 = "Lets GO0oo!!";
hero_line04 = "I'm glad I slowed down!! There are \nso many asteroids ahead!";
hero_line04 = string_replace_all(hero_line04, "\\n", "\n");
hero_line05 = "How come I didn't notice their arrival??";
ds_list_add(plot_lines,hero_line01,hero_line02,hero_line03,hero_line04);
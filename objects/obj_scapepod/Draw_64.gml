var _guiwidth = guiwidth;
var _guiheight = guiheight;



draw_set_color(c_white);
if(object_exists(obj_radar)){
	draw_text(obj_radar.x-150,obj_radar.y-128,speed);
	draw_text(obj_radar.x+100,obj_radar.y-128,obj_controller.player_total_jumps);
	draw_text(obj_radar.x+100,obj_radar.y-96,obj_controller.ontrack_jumps);
	draw_text(obj_radar.x+100,obj_radar.y+42,obj_controller.hero_hunger);
	draw_healthbar(obj_radar.x-250,obj_radar.y+8,obj_radar.x-144,obj_radar.y+32,pod_navigation_energy,c_black,c_yellow,c_blue,0,0,0);
	draw_healthbar(obj_radar.x-250,obj_radar.y+42,obj_radar.x-144,obj_radar.y+84,pod_health,c_black,c_red,c_green,0,0,0);
}
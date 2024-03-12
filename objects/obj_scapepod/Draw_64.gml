var _guiwidth = guiwidth;
var _guiheight = guiheight;

draw_set_color(c_white);
if(object_exists(obj_radar)){
	draw_text(obj_radar.x-116,obj_radar.y-116,speed);
	//draw_text(obj_radar.x+100,obj_radar.y-128,obj_controller.player_total_jumps);
	//draw_text(obj_radar.x+100,obj_radar.y-96,obj_controller.ontrack_jumps);
	//draw_text(obj_radar.x+100,obj_radar.y+42,obj_controller.hero_hunger);
	//draw_text(obj_radar.x+100,obj_radar.y+56,obj_controller.player_journals_captured);
	draw_healthbar(obj_radar.x-128,obj_radar.y-116,obj_radar.x-160,obj_radar.y+112,pod_navigation_energy,c_black,c_yellow,c_blue,3,0,0);
	draw_healthbar(obj_radar.x+128,obj_radar.y-116,obj_radar.x+160,obj_radar.y+112,pod_health,c_black,c_red,c_green,3,0,0);
}

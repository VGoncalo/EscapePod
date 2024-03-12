var _guiwidth = guiwidth*0.5;
var _guiheight = guiheight*0.5;
var _centerx = x;
var _centery = y;
var _radarsize = radarsize;
var _jump_correct_direction = obj_controller.ontrack_jump_direction;

draw_set_alpha(0.4);
draw_circle_color(_centerx,_centery,_radarsize*0.8,c_white,c_white,0);
draw_circle_color(_centerx,_centery,(_radarsize*0.8)*0.5,c_white,c_white,1);
draw_set_alpha(1);
draw_circle_color(_centerx,_centery,5,c_lime,c_lime,0);


with(obj_ship_hunter){
	var xx = _centerx + (x/room_width * _guiwidth) - (obj_scapepod.x/room_width * _guiwidth);
	var yy = _centery + (y/room_height * _guiheight) - (obj_scapepod.y/room_height * _guiheight);	
	if(point_in_circle(xx,yy,_centerx,_centery,_radarsize)){
		draw_circle_color(xx,yy,4,c_red,c_red,0);
	}
}
with(obj_ship_hunter_I){
	var xx = _centerx + (x/room_width * _guiwidth) - (obj_scapepod.x/room_width * _guiwidth);
	var yy = _centery + (y/room_height * _guiheight) - (obj_scapepod.y/room_height * _guiheight);	
	if(point_in_circle(xx,yy,_centerx,_centery,_radarsize)){
		draw_circle_color(xx,yy,5,c_red,c_red,0);
	}
}
with(obj_aquaris){
	var xx = _centerx + (x/room_width * _guiwidth) - (obj_scapepod.x/room_width * _guiwidth);
	var yy = _centery + (y/room_height * _guiheight) - (obj_scapepod.y/room_height * _guiheight);	
	if(point_in_circle(xx,yy,_centerx,_centery,_radarsize)){
		draw_circle_color(xx,yy,8,c_red,c_red,0);
	}
}
with(obj_asteroid){
	var xx = _centerx + (x/room_width * _guiwidth) - (obj_scapepod.x/room_width * _guiwidth);
	var yy = _centery + (y/room_height * _guiheight) - (obj_scapepod.y/room_height * _guiheight);	
	if(point_in_circle(xx,yy,_centerx,_centery,_radarsize)){
		draw_circle_color(xx,yy,2,c_yellow,c_yellow,0);
	}
}
with(obj_space_station){
	var xx = _centerx + (x/room_width * _guiwidth) - (obj_scapepod.x/room_width * _guiwidth);
	var yy = _centery + (y/room_height * _guiheight) - (obj_scapepod.y/room_height * _guiheight);	
	if(point_in_circle(xx,yy,_centerx,_centery,_radarsize)){
		draw_circle_color(xx,yy,8,c_blue,c_blue,0);
	}
}
with(obj_poddebris){
	var xx = _centerx + (x/room_width * _guiwidth) - (obj_scapepod.x/room_width * _guiwidth);
	var yy = _centery + (y/room_height * _guiheight) - (obj_scapepod.y/room_height * _guiheight);	
	if(point_in_circle(xx,yy,_centerx,_centery,_radarsize)){
		draw_circle_color(xx,yy,5,c_lime,c_lime,0);
	}
}

// Draw Correct Jump Direction
if(room_get_name(room) != room_get_name(game_rooms.rm_zion_spacestation) ){
	if(_jump_correct_direction=jump_directions.east){
		draw_sprite(spr_direction,0,_centerx+_radarsize*0.8-12,_centery);
	}else if(_jump_correct_direction=jump_directions.north){
		draw_sprite(spr_direction,1,_centerx,_centery-_radarsize*0.8+12);
	}else if(_jump_correct_direction=jump_directions.west){
		draw_sprite(spr_direction,2,_centerx-_radarsize*0.8+12,_centery);
	}else if(_jump_correct_direction=jump_directions.south){
		draw_sprite(spr_direction,3,_centerx,_centery+_radarsize*0.8-12);
	}
}

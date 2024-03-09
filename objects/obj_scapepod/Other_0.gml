var _jump_direction;

if(y > room_height){_jump_direction=jump_directions.south;}
if(y < 0){_jump_direction=jump_directions.north;}
if(x > room_width){_jump_direction=jump_directions.east;}
if(x < 0){_jump_direction=jump_directions.west;}

if(speed > 50){
	obj_controller.player_total_jumps += 1;
	
	if(_jump_direction == obj_controller.ontrack_jump_direction){
		obj_controller.ontrack_jumps -= 1;
		obj_controller.player_ontrack_jumps += 1;
		obj_controller.player_ontrack = true;
	}else{obj_controller.player_ontrack = false;}
	
	if(obj_controller.player_ontrack_jumps == obj_controller.amountjumps_to_spacedebries){
		show_debug_message("go to room spacedebries");
		//room_goto(4);
	}	
	if(obj_controller.player_ontrack_jumps == obj_controller.amountjumps_to_asteroidbelt){
		show_debug_message("go to room asteroidsbelt");
		room_goto(4);
	}	
	if(obj_controller.player_ontrack_jumps == obj_controller.amountjumps_to_merchant){
		show_debug_message("go to room boss");
		//room_goto(5);
	}	
	if(obj_controller.player_ontrack_jumps == obj_controller.amountjumps_to_Imperiumstation){
		show_debug_message("go to room amountjumps_to_Imperiumstation");
		//room_goto(6);
	}
}

// swap pod
if(_jump_direction=jump_directions.north){
	x=room_width/2;
	y=room_height;
}else if(_jump_direction=jump_directions.west){
	x=room_width;
	y=room_height/2;
}else if(_jump_direction=jump_directions.south){
	x=room_width/2;
	y=0;
}else if(_jump_direction=jump_directions.east){
	x=0;
	y=room_height/2;
}

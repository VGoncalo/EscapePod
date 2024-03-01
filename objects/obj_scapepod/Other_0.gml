if(speed > 50){obj_controller.player_total_jumps += 1;}

var _jump_direction;

if(y > room_height){y=0;x=room_width/2;_jump_direction=jump_directions.south;}
if(y < 0){y=room_height;x=room_width/2;_jump_direction=jump_directions.north;}
if(x > room_width){y=room_height/2;x=0;_jump_direction=jump_directions.east;}
if(x < 0){y=room_height/2;x=room_width;_jump_direction=jump_directions.west;}

if(_jump_direction = obj_controller.ontrack_jump_direction and speed > 50){
	obj_controller.ontrack_jumps -= 1;
}


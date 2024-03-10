/// @description random alarm change
randomize();
//show_debug_message("alarm 9 - change state");
if(aquaris_sate != aquaris_states.talk and aquaris_sate != aquaris_states.dead and aquaris_sate != aquaris_states.packman){
	aquaris_sate = choose(
		aquaris_states.armshoot,
		aquaris_states.basicshoot,
		aquaris_states.idle
	);
}
alarm[9] = room_speed * random_range(5,10);
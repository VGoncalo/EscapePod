if(room_get_name(room)==room_get_name(game_rooms.rm_space)){
	if(object_exists(obj_scapepod)){
		if(obj_scapepod.index<=1){
			obj_scapepod.pod_state = pod_states.idle;
			_talk = true;
			_talkJumpInfo = true;
		}else{
			_talk = false;
			_talkJumpInfo = false;
		}
	}
}

if(room_get_name(room)==room_get_name(game_rooms.rm_merchant)){
	audio_play_sound(sd_battle,0,false);
}
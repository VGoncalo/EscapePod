if(index < string_length(sentence)){
	index++;
	alarm[0] = room_speed*_interval;
}else{
	i++;
	if(i<=len){
		index = 0;
		sentence = ds_list_find_value(_sentences,i);
		alarm[1] = room_speed*2;
		audio_play_sound(sd_alien_talk_3,0,false);
	}else{
		room_goto_next();
	}
}
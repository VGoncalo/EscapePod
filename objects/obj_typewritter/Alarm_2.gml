if(index < string_length(_paraph)){
	index++;
	alarm[2] = room_speed*_interval;
}else if(index = string_length(_paraph)){
	index++;
	alarm[2] = room_speed*2;
}else{
	i++;
	if(i<_amount_paraphs){
		index = 0;
		_paraph = ds_list_find_value(_text01,i);
		alarm[3] = room_speed*3;
	}else{
		room_goto_next();
	}
}
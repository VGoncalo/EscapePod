x = obj_scapepod.x;
y = obj_scapepod.y;

if(ontrack_jumps < 1){
	if(ontrack_jump_direction = jump_directions.east){
		ontrack_jump_direction = choose(jump_directions.east,jump_directions.north,jump_directions.south);
	}
	if(ontrack_jump_direction = jump_directions.north){
		ontrack_jump_direction = choose(jump_directions.east,jump_directions.north,jump_directions.west);
	}
	if(ontrack_jump_direction = jump_directions.west){
		ontrack_jump_direction = choose(jump_directions.south,jump_directions.north,jump_directions.west);
	}
	if(ontrack_jump_direction = jump_directions.south){
		ontrack_jump_direction = choose(jump_directions.south,jump_directions.east,jump_directions.west);
	}
	ontrack_jumps = ceil(random_range(2,5));
}



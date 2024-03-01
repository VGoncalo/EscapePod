game_state = game_states.ploting;

ontrack_jump_direction = choose(jump_directions.east,jump_directions.north,jump_directions.west);
ontrack_jumps = ceil(random_range(2,4));

//Hero Info
hero_hunger = 0;
hero_state = hero_states.fine;

//Score
player_total_jumps = 0;
player_ontrack_jumps = 0;
player_amount_enemies_destroyed = 0;
player_amount_hungry = 0;
player_journals_captured = 0;
player_amount_death = 0;
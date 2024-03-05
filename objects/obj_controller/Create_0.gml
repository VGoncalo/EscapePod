game_state = game_states.playing;

ontrack_jump_direction = choose(jump_directions.east,jump_directions.north,jump_directions.west);
ontrack_jumps = ceil(random_range(2,4));

//Hero Info
hero_hunger = 18;
hero_state = hero_states.fine;

//Score
player_total_jumps = 0;
player_ontrack_jumps = 0;
player_amount_enemies_destroyed = 0;
player_amount_hungry = 0;
player_journals_captured = 0;
player_amount_death = 0;
player_ontrack = true;


amountjumps_to_Imperiumstation = 40; //final decision
amountjumps_to_merchant = 35; //boss
amountjumps_to_asteroidbelt = 22; //hunter I
amountjumps_to_spacedebries = 6; //plot builder


alarm[0] = -1;
hunter_spawner_time = 15;
_createImprovedHunterI = false;

instance_deactivate_layer("Asteroid_Field");
instance_deactivate_layer("Asteroid_Field_1");
instance_deactivate_layer("Asteroid_Field_2");
instance_deactivate_layer("Asteroid_Field_3");
instance_deactivate_layer("Asteroid_Field_4");
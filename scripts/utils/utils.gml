enum game_states{
	menu,
	playing,
	paused,
	ploting
}

enum pod_states{
	idle,
	free_navigation,
	dead
}

enum pod_items {
	shield,
	missiles,
	turret,
	energy_fast_charger,
	speed_booster,
	space_bimby
}

enum hero_states {
	fine,
	hungry,
	unconscious
}

enum journey_stages {
	solarius,
	space_debries,
	asteroids_belt,
	space_merchant,
	imperium_space_station
}

enum aquaris_states{
	talk,
	basicshoot,
	armshoot,
	idle,
	packman,
	dead
	
}

enum jump_directions{
	east,
	north,
	west,
	south
}

enum game_rooms{
	rm_intro,
	rm_menu,
	rm_solarius,
	rm_space,
	rm_asteroids_field,
	rm_space_2,
	rm_merchant,
	rm_zion_spacestation,
	rm_gameover
}

global.hunger_coef = 6;
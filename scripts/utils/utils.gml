enum game_states{
	menu,
	playing,
	paused,
	ploting
}

enum pod_states{
	idle,
	free_navigation,
	tunneling
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
	normal,
	shrink,
	big,
	bullethell,
	recover,
	huntercircle,
	hunterrandom
}

enum jump_directions{
	east,
	north,
	west,
	south
}

global.hunger_coef = 6;
if((room_get_name(room)==room_get_name(game_rooms.rm_space) or room_get_name(room)==room_get_name(game_rooms.rm_space_2)) and hero_hunger>1 ){
	//layer_destroy_instances("Instances");
	//layer_destroy_instances("Instances_Bellow");
	//layer_destroy_instances("Instances_Planet");
}
if(room_get_name(room)==room_get_name(game_rooms.rm_space_2) and player_ontrack_jumps == amountjumps_to_asteroidbelt+1){
	//instance_deactivate_layer("Asteroid_Field");
	//instance_deactivate_layer("Asteroid_Field_1");
	//instance_deactivate_layer("Asteroid_Field_2");
	//instance_deactivate_layer("Asteroid_Field_3");
	//instance_deactivate_layer("Asteroid_Field_4");
}
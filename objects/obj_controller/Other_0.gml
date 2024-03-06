if(room_get_name(room) == "rm_space"){
	// clear room and build new instances
	layer_destroy_instances("Instances");
	layer_destroy_instances("Instances_Bellow");
	layer_destroy_instances("Instances_Planet");

	// build env
	var _have_planet = choose(0,1);
	var _have_asteroids = choose(0,1);

	if(player_ontrack){
		show_debug_message("Create env")
		instance_create_layer(room_width/2,room_height/2,"Instances_Planet",obj_planet_bck);
		if(_have_asteroids=1){instance_create_layer(room_width/2,room_height/2,"Instances",obj_asteroid_field);}
	}else{
		// create asteroid fields
		show_debug_message("create ast field")
		instance_create_layer(room_width/2,room_height/2,"Instances",obj_asteroid_field);
		instance_create_layer(room_width/2,room_height/2,"Instances",obj_asteroid_field);
		instance_create_layer(room_width/2,room_height/2,"Instances",obj_asteroid_field);
	}

	if(ontrack_jumps < 1){
		layer_background_change(layer_background_get_id("Background"),choose(spr_bck_nebula_red,spr_bck_nebula_blue, spr_bck_nebula_aqua_pink));
		layer_background_change(layer_background_get_id("Backgrounds_1"),choose(spr_bck_empty,spr_bkc_stars));
		layer_background_change(layer_background_get_id("Backgrounds_2"),choose(spr_bck_empty,spr_bkg_small_star));
	}
}
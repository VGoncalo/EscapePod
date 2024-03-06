if(place_free(x,y)){

	var _place = choose("center","q1","q2","q3","q4");
	if(_place = "center"){
		var _new_ast_field = layer_get_all_elements("Asteroid_Field");
	}
	if(_place = "q1"){
		var _new_ast_field = layer_get_all_elements("Asteroid_Field_1");
	}
	if(_place = "q2"){
		var _new_ast_field = layer_get_all_elements("Asteroid_Field_2");
	}
	if(_place = "q3"){
		var _new_ast_field = layer_get_all_elements("Asteroid_Field_3");
	}
	if(_place = "q4"){
		var _new_ast_field = layer_get_all_elements("Asteroid_Field_4");
	}

	var _have_debris = choose(0,1);
	show_debug_message("have pod debries?")
	show_debug_message(_have_debris)
	var _amount_of_asteroids = array_length(_new_ast_field);
	for(var i = 0; i <= _amount_of_asteroids-1; i+=1){
		var ast = layer_instance_get_instance(array_get(_new_ast_field, i));
		var xx = ast.x;
		var yy = ast.y;
		instance_create_layer(xx,yy,"Instances",obj_asteroid);
	
		if(i=_amount_of_asteroids/2 and _have_debris){
			instance_create_layer(xx+64,yy+64,"Instances_Bellow",obj_poddebris);
		}
	}
}
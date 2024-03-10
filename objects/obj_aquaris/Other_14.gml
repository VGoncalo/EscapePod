/// @description packman
direction = _poddir;
image_angle = direction;
image_speed = 1;
sprite_index = spr_pacman;

move_towards_point(obj_scapepod.x,obj_scapepod.y,_sp);

if(_poddist > 512){
	//sprite_index = spr_aquaris;
	aquaris_sate = aquaris_states.idle;
}

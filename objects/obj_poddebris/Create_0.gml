direction = random(360);
image_angle = direction;

_plot_range = 254;

var _distance = random(_plot_range);
var _direction = direction;
var _journalx = lengthdir_x(_distance,_direction);
var _journaly = lengthdir_y(_distance,_direction);

instance_create_layer(x+_journalx,y+_journaly,"Instances_Bellow",obj_scientist_journal);

var _asteroids = collision_circle(x,y,_plot_range,obj_asteroid,1,1);
instance_destroy(_asteroids);
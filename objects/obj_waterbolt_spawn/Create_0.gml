_shake = false;
shake_time = 0;
shake_magnitude = 0;
shake_fade = 0.25;
_shoot_timer = random(5);
alarm[0] = room_speed * _shoot_timer;
//alarm[1] = room_speed * random(3);

_ray = false;
_nuclear_ray = room_speed*5;
alarm[2] = _nuclear_ray;
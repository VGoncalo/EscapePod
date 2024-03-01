
switch(pod_state){
	case pod_states.idle:
		event_user(pod_state);
	break;
	
	case pod_states.free_navigation:
		event_user(pod_state);
	break;
	
	case pod_states.tunneling:
		event_user(pod_state);
	break;
end

direction = image_angle;

if speed > 40 pod_navigation_energy -= 0.05;
if speed > 69 pod_navigation_energy -= 0.1;
if speed < 30 pod_navigation_energy += 0.02;
if speed > 75 speed = 75;


if(pod_navigation_energy > 100){pod_navigation_energy = 100;}
if(pod_navigation_energy < 0){pod_navigation_energy = 0;speed = 15}

event_inherited();
if(hitmod <= 0){
	speed = 0;
	vspeed = 0;
	grav = 0;
	mask_index = spr_empty;
	alarm[0] += 600;
	attached = true;
	anchor = other;
}

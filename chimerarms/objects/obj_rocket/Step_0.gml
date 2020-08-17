// destroy if out of time
if(duration <= 0){event_perform(ev_alarm,0);}
duration--;

// accelerate
if(speed < movespeed){speed += moveacc;}

// smoke particles
if(global.time%5 == 0){
	with(instance_create_layer(x,y,"Attacks",obj_smoke)){
		image_angle = irandom_range(0,359);
	}
}

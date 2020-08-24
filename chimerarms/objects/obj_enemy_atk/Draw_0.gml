draw_self();

// other effects
if(fading){
	grav = 0;
	image_alpha-=1/10;
	if(image_alpha <= 0){
		instance_destroy();
	}
}

if(expanding){
	image_xscale *= 1.1;
	image_yscale *= 1.1;
}
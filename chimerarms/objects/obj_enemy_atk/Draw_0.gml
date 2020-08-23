// other effects
if(fading){
	image_alpha-=1/10;
	if(image_alpha <= 0){
		instance_destroy();
	}
}

if(expanding){
	image_xscale *= 1.1;
	image_yscale *= 1.1;
}
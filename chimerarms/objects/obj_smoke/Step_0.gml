image_alpha -= 0.03;
image_xscale += random_range(0,0.1);
image_yscale += random_range(0,0.1);
if(image_alpha <= 0){
	instance_destroy();
}

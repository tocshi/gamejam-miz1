

// change colour based on % hp left
image_blend = make_color_hsv(0,200-((hp/maxhp)*200),255);

// flash if invincible
if(invincible){image_speed = 1;}
else{image_speed = 0;}

// movement effects
if(isMoving){
	var angle = 10*sin(global.time/5);
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,angle,image_blend,image_alpha);
}
else{draw_self();}

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
else{
	// face last moved direction; CANNOT ACCOUNT FOR 0!
	if(hspeed > 0){image_xscale = 1.5*sizemod;}
	if(hspeed < 0){image_xscale = -1.5*sizemod;}
	image_yscale = 1.5*sizemod;
}
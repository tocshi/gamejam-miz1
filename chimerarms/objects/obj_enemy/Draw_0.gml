

// change colour based on % hp left
image_blend = make_color_hsv(0,200-((hp/maxhp)*200),255);

// movement effects
if(isMoving){
	var angle = 10*sin((global.time+time_offset)/5);
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,angle,image_blend,image_alpha);
}
else{draw_self();}

// other effects
if(fading){
	image_alpha-=1/10;
	if(image_alpha <= 0){
		global.waveremaining -= atk/global.enemy_atkmod;
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
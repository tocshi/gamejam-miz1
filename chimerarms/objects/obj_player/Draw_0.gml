// flash if invincible
if(invincible){image_speed = 1;}
else{image_speed = 0;}

// movement effects
if(isMoving){
	var angle = 10*sin(global.time/5);
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,angle,c_white,1);
}
else{draw_self();}


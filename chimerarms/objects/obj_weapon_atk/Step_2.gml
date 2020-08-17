// match anchor
if(atktype == 0){
	image_angle -= (300/((room_speed/atkspeed)/2))*dir;
	x = anchor.x+10*dir;
	y = anchor.y;
}
else{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	x = anchor.x;
	y = anchor.y;
	if(image_angle>90 && image_angle<270){image_yscale = -1.5*rangemod;}
	else{image_yscale = 1.5*rangemod;}
	image_angle-=(45*sign(image_yscale));
}



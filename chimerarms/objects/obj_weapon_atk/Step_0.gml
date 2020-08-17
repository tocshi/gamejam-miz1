if(!instance_exists(anchor)){
	instance_destroy();
	exit;
}

//tick down duration
duration--;
if(duration <= 0){instance_destroy()};

if(atktype == 0){
	image_angle -= (300/((room_speed/atkspeed)/2))*dir;
}
else{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}

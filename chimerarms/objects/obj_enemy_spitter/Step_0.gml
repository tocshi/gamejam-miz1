direction = point_direction(x,y,destX,destY);
if(speed < movespeed && canMove){
	speed += moveacc;
	isMoving = true;
}
else{
	speed = 0;
}
event_inherited();

// attack if in range and in room
if(x > room_width){exit;}
if(x-96 < range*rangemod){
	canMove = false;
	isMoving = false;
	if(alarm[1] <= 0 && atkTimer <= 0){
		alarm[1] = 30;
		instance_create_layer(x,y,"Attacks",obj_exclamation);
	}
}
else if(point_distance(x,y,obj_player.x,obj_player.y) < range*rangemod){
	if(alarm[2] <= 0 && atkTimer <= 0){
		alarm[2] = 30;
		instance_create_layer(x,y,"Attacks",obj_exclamation);	
	}
}
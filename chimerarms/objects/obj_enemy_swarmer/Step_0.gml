direction = point_direction(x,y,destX,destY);
if(speed < movespeed){
	speed += moveacc;
	isMoving = true;
}
event_inherited();


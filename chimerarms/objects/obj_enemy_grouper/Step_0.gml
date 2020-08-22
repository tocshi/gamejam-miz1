if(hspeed > -1 * movespeed){
	hspeed -= moveacc;
	isMoving = true;
}
event_inherited();


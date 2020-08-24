if(hspeed > -1 * movespeed && !fading){
	hspeed -= moveacc;
	isMoving = true;
}
event_inherited();


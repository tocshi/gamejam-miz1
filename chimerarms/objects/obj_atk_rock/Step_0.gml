if(abs(hspeed) < movespeed){
	hspeed -= moveacc*dir;
	isMoving = true;
}

// Resolve gravity
vspeed += grav;

// collide with wall
if(place_meeting(x+hspeed,y,obj_wall)){
	var yplus = 0;
	while(place_meeting(x+hspeed,y-yplus,obj_wall) && yplus <= 4){
		yplus++;
	}
	if(place_meeting(x+hspeed,y-yplus,obj_wall)){
		while(!place_meeting(x+sign(hspeed),y,obj_wall)){
			x += sign(hspeed);
		}
		hspeed = 0;
	}
	else{
		y -= yplus;
	}
}
if(place_meeting(x,y+vspeed,obj_wall)){
	while(!place_meeting(x,y+sign(vspeed),obj_wall)){
		y += sign(vspeed);
	}
	vspeed = 0;
}

if(abs(origX-x) > range){fading = true;}
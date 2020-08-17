if(hp <= 0){
	mask_index = spr_empty;
	fading = true;
	expanding = true;
	hspeed = 0;
	vspeed = 0;
	exit;
}

// Resolve timers
if(atkTimer > 0){
	atkTimer--;
	canAttack = false;
}
else{canAttack = true;}

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

if(place_meeting(x,y+1,obj_wall)){
	canJump = true;
	// set timer for jump leeway
	onPlatform = 10;
}
else{
	onPlatform--;
	if(onPlatform <= 0){alarm[0] = 1;}
}



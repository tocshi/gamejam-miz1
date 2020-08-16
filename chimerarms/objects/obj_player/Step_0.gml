// Resolve timers
if(atkTimer > 0){
	atkTimer--;
	canAttack = false;
}
else{canAttack = true;}

// move and jump
if(canMove){
	if(keyboard_check(ord("A")) || keyboard_check(vk_left)){
		if(hspeed > -1 * movespeed){
			hspeed -= moveacc;
			isMoving = true;
		}
	}
	if(keyboard_check(ord("D")) || keyboard_check(vk_right)){
		if(hspeed < movespeed){
			hspeed += moveacc;
			isMoving = true;
		}
	}
	if((keyboard_check(ord("W")) || keyboard_check(vk_space)) && canJump){
		if(alarm[0] <= 0){alarm[0] = 10;}
		vspeed = -8;
	}
}

// deacc when not moving
if(isMoving){
	if(!keyboard_check(ord("A")) & !keyboard_check(vk_left) && !keyboard_check(ord("D")) && !keyboard_check(vk_right)){
		if(hspeed != 0){
			if(hspeed > 0){ hspeed -= moveacc;}
			else{hspeed += moveacc;}
		}
		else{isMoving = false;}
	}
}

// attack
if(canAttack){
	if((mouse_check_button(mb_left) || keyboard_check(ord("Z"))) && meleemode > 0){
		atkTimer = room_speed/atkspeed;
		with(instance_create_layer(x,y,"Attacks",obj_weapon_atk)){
			atkspeed = other.atkspeed;
			duration = (room_speed/atkspeed)/2;
			dir = sign(other.image_xscale);
			if(dir = 1){image_angle = 100;}
			else{image_angle = 80;}
			image_xscale = 1.5*other.rangemod;
			image_yscale = 1.5*other.rangemod*dir;
		}
	}
	if((mouse_check_button(mb_right) || keyboard_check(ord("X"))) && shotmode > 0){
		atkTimer = room_speed/atkspeed;
		switch(shotmode){
			// bow and arrow
			case 1:
			
			break;
			// staff
			case 2:
			
			break;
			// gun
			case 3:
			
			break;
			// launcher
			case 4:
			
			break;
		}
	}
}

// Resolve gravity
vspeed += grav;

// collide with wall
if(place_meeting(x+hspeed,y,obj_playerwall)){
	var yplus = 0;
	while(place_meeting(x+hspeed,y-yplus,obj_playerwall) && yplus <= 3){
		yplus++;
	}
	if(place_meeting(x+hspeed,y-yplus,obj_playerwall)){
		while(!place_meeting(x+sign(hspeed),y,obj_playerwall)){
			x += sign(hspeed);
		}
		hspeed = 0;
	}
	else{
		y -= yplus;
	}
}
if(place_meeting(x,y+vspeed,obj_playerwall)){
	while(!place_meeting(x,y+sign(vspeed),obj_playerwall)){
		y += sign(vspeed);
	}
	vspeed = 0;
}

if(place_meeting(x,y+1,obj_playerwall)){
	canJump = true;
	// set timer for jump leeway
	onPlatform = 10;
}
else{
	onPlatform--;
	if(onPlatform <= 0){alarm[0] = 1;}
}



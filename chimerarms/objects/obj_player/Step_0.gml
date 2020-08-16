// Resolve gravity
if(place_free(x,y)){
	vspeed += grav;
}
else{
	vspeed = 0;
	canJump = true;
}

// collide with wall
if(place_meeting(x,y,obj_playerwall) || place_meeting(x,y,obj_wall)){
	x = xprevious;
	y = yprevious;
}

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
	if(mouse_check_button(mb_left) || keyboard_check(ord("Z"))){
		atkTimer = room_speed/atkspeed;
	}
	if(mouse_check_button(mb_right) || keyboard_check(ord("X"))){
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
			
			default:
			atkTimer = 0;
		}
	}
}



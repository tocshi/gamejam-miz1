// Resolve timers
if(atkTimer > 0){
	atkTimer--;
	canAttack = false;
}
else{canAttack = true;}

// move and jump
if(canMove){
	if(keyboard_check(ord("A")) || keyboard_check(vk_left)){
		facing = -1;
		if(hspeed > -1 * movespeed){
			hspeed -= moveacc;
			isMoving = true;
		}
	}
	if(keyboard_check(ord("D")) || keyboard_check(vk_right)){
		facing = 1;
		if(hspeed < movespeed){
			hspeed += moveacc;
			isMoving = true;
		}
	}
	if((keyboard_check(ord("W")) || keyboard_check(vk_space) || keyboard_check(vk_up)) && canJump){
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
			if(hspeed > -0.1 && hspeed < 0.1){hspeed = 0;}
		}
		else{isMoving = false;}
	}
}

// attack
if(canAttack && !global.pause){
	if((mouse_check_button(mb_left) || keyboard_check(ord("Z"))) && meleemode > 0){
		atkTimer = room_speed/atkspeed;
		with(instance_create_layer(x,y,"Attacks",obj_weapon_atk)){
			atk = other.atk;
			atkspeed = other.atkspeed;
			hitmod = other.hitmod;
			piercemod = other.piercemod;
			duration = (room_speed/atkspeed)/3;
			dir = sign(mouse_x - other.x);
			image_angle = 90 + (10 * dir);
			image_xscale = 1.5*other.rangemod;
			image_yscale = 1.5*other.rangemod*dir;
		}
	}
	else if((mouse_check_button(mb_right) || keyboard_check(ord("X"))) && shotmode > 0){
		atkTimer = room_speed/atkspeed;
		with(instance_create_layer(x,y,"Attacks",obj_weapon_atk)){
			atktype = 1;
			atk = other.atk;
			atkspeed = other.atkspeed;
			hitmod = other.hitmod;
			piercemod = other.piercemod;
			rangemod = other.rangemod;
			duration = room_speed/atkspeed;
			image_xscale = 1.5*rangemod;
			image_yscale = 1.5*rangemod;
		}
		switch(shotmode){
			// bow and arrow
			case 1:
			with(instance_create_layer(x,y,"Attacks",obj_arrow)){
				atk = other.atk*0.7;
				hitmod = other.hitmod;
				piercemod = other.piercemod;
				rangemod = other.rangemod;
				direction = point_direction(x,y,mouse_x,mouse_y);
				image_angle = direction-45;
				speed = 15*rangemod;
			}
			break;
			// staff
			case 2:
			with(instance_create_layer(x,y,"Attacks",obj_bolt)){
				atk = other.atk*0.7;
				hitmod = other.hitmod;
				piercemod = other.piercemod;
				range = 256 * other.rangemod;
				direction = point_direction(x,y,mouse_x,mouse_y);
				image_angle = direction-45;
				speed = 5;
				duration = range/speed;
			}
			break;
			// gun
			case 3:
			remaining = 3;
			alarm[3] = 1;
			break;
			// launcher
			case 4:
			with(instance_create_layer(x,y,"Attacks",obj_rocket)){
				atk = other.atk*0.7;
				hitmod = other.hitmod;
				piercemod = other.piercemod;
				range = 1500 * other.rangemod;
				direction = point_direction(x,y,mouse_x,mouse_y);
				image_angle = direction-45;
				speed = 0;
				duration = range/30;
			}
			break;
		}
	}
}

// Resolve gravity
vspeed += grav;

// collide with wall
if(place_meeting(x+hspeed,y,obj_playerwall)){
	var yplus = 0;
	while(place_meeting(x+hspeed,y-yplus,obj_playerwall) && yplus <= 4){
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

/*
if(keyboard_check_pressed(ord("1"))){
	global.shotmode = 1;
	room_restart();
}
if(keyboard_check_pressed(ord("2"))){
	global.shotmode = 2;
	room_restart();
}
if(keyboard_check_pressed(ord("3"))){
	global.shotmode = 3;
	room_restart();
}
if(keyboard_check_pressed(ord("4"))){
	global.shotmode = 4;
	room_restart();
}*/



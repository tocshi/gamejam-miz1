if(!invincible){
	hp--;
	if(hp <= 0){
		mask_index = 0;
		vspeed = -10;
		hspeed = irandom_range(-5,5);
		canMove = false;
		canAttack = false;
		isMoving = false;
		alarm[2] = room_speed*3;
	}
	else{
		invincible = true;
		alarm[1] = 90;
		vspeed = -4;
		hspeed = -4 * sign(other.x-x);
		isMoving = true;
	}
	other.fading = true;
	other.mask_index = spr_empty;
}
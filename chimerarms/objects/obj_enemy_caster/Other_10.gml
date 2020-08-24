/// @description perform ranged attack
if(fading){exit;}
atkTimer = room_speed/atkspeed;

with(instance_create_layer(x,y,"Attacks",obj_enemy_bolt)){
	atk = other.atk*0.5;
	range = other.range * other.rangemod;
	direction = point_direction(x,y,other.targetX,other.targetY);
	image_angle = direction-45;
	speed = 5;
	duration = range/speed;
	image_blend = c_blue;
}

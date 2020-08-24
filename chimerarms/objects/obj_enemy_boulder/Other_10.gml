/// @description perform ranged attack
if(fading){exit;}
atkTimer = room_speed/atkspeed;

with(instance_create_layer(x,y-10,"Attacks",obj_atk_rock)){
	atk = other.atk*0.5;
	range = other.range * other.rangemod;
	dir = other.dir;
}

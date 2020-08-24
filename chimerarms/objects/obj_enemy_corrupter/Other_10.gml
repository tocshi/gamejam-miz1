/// @description perform ranged attack
if(fading){exit;}
atkTimer = room_speed/atkspeed;
audio_play_sound(snd_rar,5,0);
with(instance_create_layer(targetX,-100,"Attacks",obj_atk_javelin)){
	atk = other.atk*0.5;
	vspeed = 6;
}

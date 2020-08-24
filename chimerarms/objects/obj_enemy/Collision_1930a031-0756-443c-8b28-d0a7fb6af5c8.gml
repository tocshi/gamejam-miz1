// deduct castle hp if base
if(other.base){
	audio_play_sound(snd_hitrock,9,0);
	fading = true;
	expanding = true;
	mask_index = spr_empty;
	global.basehp -= atk;
	hp = 0;
}

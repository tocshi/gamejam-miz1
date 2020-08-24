// deduct castle hp if base
if(other.base){
	audio_play_sound(snd_hitrock,9,0);
	fading = true;
	mask_index = spr_empty;
	global.basehp -= atk;
}

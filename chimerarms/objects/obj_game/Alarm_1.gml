/// @description WAVE END
if(global.wave == 9){
	ending = true;
	audio_stop_all();
	audio_play_sound(bgm_end,99,1);
	exit;
}
shownext = true;
event_perform(ev_other,ev_user0);
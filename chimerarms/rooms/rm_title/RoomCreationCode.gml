if(!instance_exists(obj_game)){
	instance_create_depth(0,0,0,obj_game);
}

with(instance_create_depth(room_width/2-room_width/8,room_height/2,0,obj_menu_button)){
	data = [rm_game,"START"];
	width = room_width/4;
	height = room_height/6;
}

audio_stop_all();
audio_play_sound(bgm_loop,99,1);
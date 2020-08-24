// interact behaviour
if(mouse_check_button_pressed(mb_left)){
	if(mouse_x >= x && mouse_x <= x+width && mouse_y >= y && mouse_y <= y+height){
		if(data[0] == ""){show_error("button data does not exist", true);}
		switch(type){
			// goto room
			case 0:
				room_goto(data[0]);
				audio_stop_sound(bgm_loop);
				audio_play_sound(bgm_battle,99,1);
				break;
			// switch keybind
			case 1:
				state = 1;
				keyboard_string = "";
				break;
			default: show_error("unknown button type specified",true);
		}
	}
	else{
		switch(type){
			// goto room
			case 0:
				break;
			// switch keybind
			case 1:
				state = 0;
				break;
			default: show_error("unknown button type specified",true);
		}
	}
}

// janky but this makes cool particles
if(global.time % 20 == 0){
	instance_create_depth(irandom(room_width),-100,1,obj_falling_weapon);
}

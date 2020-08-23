// interact behaviour
if(mouse_check_button_pressed(mb_left)){
	if(mouse_x >= x && mouse_x <= x+width && mouse_y >= y && mouse_y <= y+height){
		if(data[0] == ""){show_error("button data does not exist", true);}
		switch(type){
			// goto room
			case 0:
				room_goto(data[0]);
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
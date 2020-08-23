// hover behaviour
if(mouse_x >= x && mouse_x <= x+width && mouse_y >= y && mouse_y <= y+height){
	draw_rectangle_color(x,y,x+width,y+height,hover_colour,hover_colour,hover_colour,hover_colour,false);
}
else{
	draw_rectangle_color(x,y,x+width,y+height,def_colour,def_colour,def_colour,def_colour,false);
}

// button text
draw_set_color(text_colour);
draw_set_font(text_font);
switch(type){
	case 0:
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(x+width/2,y+height/2,data[1]);
		break;
	case 1:
		if(state = 1){
			draw_set_halign(fa_left);
			draw_set_valign(fa_middle);
			draw_set_color(c_yellow);
			draw_text(x+10,y+height/2,data[0]);
			draw_set_halign(fa_right);
			draw_text(x+width-10,y+height/2,"Press any key");
		}
		else{
			var key = variable_global_get(data[0]);
			key = key[global.movement_mode];
			switch(key){
				case vk_enter:
					key = "Enter";
					break;
				case vk_tab:
					key = "Tab";
					break;
				case vk_shift:
					key = "Shift";
					break;
				case vk_control:
					key = "Ctrl";
					break;
				case vk_space:
					key = "Space (Do not use for now!)";
					break;
				case 191:
					key = "/";
					break;
				default:
					key = chr(key);
			}
			draw_set_halign(fa_left);
			draw_set_valign(fa_middle);
			draw_text(x+10,y+height/2,data[0]);
			draw_set_halign(fa_right);
			draw_text(x+width-10,y+height/2,key);
		}
		break;
	default: show_error("unknown button type specified",true);
}

//temp
draw_set_halign(fa_left);
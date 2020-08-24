switch(room){

	case rm_title:
		draw_set_font(fnt_title);
		draw_set_halign(fa_right);
		draw_text(room_width/2-10, room_height/4-30, "Chimer");
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/4, "a");
		draw_set_halign(fa_left);
		draw_text(room_width/2+20, room_height/4+30, "rms");
		draw_set_valign(fa_top);
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_font(fnt_defaultbig);
		draw_text(room_width/2+100, room_height/4+70, "by tocshi");
		draw_set_halign(fa_left);
		break;
}
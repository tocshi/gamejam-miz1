// hover behaviour
if(mouse_x >= x && mouse_x <= x+width && mouse_y >= y && mouse_y <= y+height){
	draw_set_alpha(0.7);
	draw_rectangle_color(x,y,x+width,y+height,hover_colour,hover_colour,hover_colour,hover_colour,false);
}
else{
	draw_set_alpha(0);
	draw_rectangle_color(x,y,x+width,y+height,def_colour,def_colour,def_colour,def_colour,false);
}

reset_draw();

// button image
draw_set_color(text_colour);
draw_set_font(text_font);
draw_sprite_ext(sprite,index,x+width/2,y+height/2,4,4,0,c_white,1);

// button text
draw_set_halign(fa_center);
draw_text(x+width/2,y+width,text);

reset_draw();

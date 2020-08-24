// hover behaviour
if(mouse_x >= x && mouse_x <= x+width && mouse_y >= y && mouse_y <= y+height && clickable){
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
if(newWeapon){
	for(var i = 0; i < ds_list_size(global.weapon_list); ++i){
		var weapon = ds_list_find_value(global.weapon_list,i);
		draw_sprite_ext(weapon[0],weapon[1],x+width/2-8,y+height/2+8,4,4,image_angle,image_blend,image_alpha);
	}
}
else{
	draw_sprite_ext(sprite,index,x+width/2,y+height/2,4,4,0,c_white,1);
}

// button text
draw_set_halign(fa_center);
draw_text(x+width/2,y+width,text);

reset_draw();

// smoke effects
if(global.wave == 0){exit;}
if(clicked && global.time%2 == 0){
	with(instance_create_depth(x+width/2,y+height/2,-2,obj_smoke)){
		sprite_index = choose(spr_smoke,spr_explosion);
		image_xscale = random_range(8,12);
		image_yscale = random_range(8,12);
		image_angle = irandom_range(0,359);
	}
}
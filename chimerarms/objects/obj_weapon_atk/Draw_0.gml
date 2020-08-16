for(var i = 0; i < ds_list_size(global.weapon_list); ++i){
	var weapon = ds_list_find_value(global.weapon_list,i);
	draw_sprite_ext(weapon[0],weapon[1],x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}

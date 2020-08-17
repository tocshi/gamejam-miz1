if(room == rm_title){exit;}

var xx = (room_width/2)-(8*sprite_get_width(spr_castlehp));
var yy = room_height - sprite_get_height(spr_castlehp);
var hps = ceil((global.basehp/global.basemaxhp)*64);
// draw castle hp text
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_font(fnt_default);
draw_set_color(c_white);
draw_text(xx-6,yy+sprite_get_height(spr_castlehp)/2,"CASTLE HP");
// draw castle hp
for(var i = 0; i < 16; ++i){
	if(hps >= 4){
		draw_sprite(spr_castlehp,4,xx,yy);
	}
	else{
		draw_sprite(spr_castlehp,max(0,hps),xx,yy);
	}
	hps -= 4;
	xx += sprite_get_width(spr_castlehp);
}
draw_set_halign(fa_left);
draw_text(xx+6,yy+sprite_get_height(spr_castlehp)/2,"WAVE " + string(global.wave));

if(room == rm_title){exit;}

var xx = (room_width/2)-(8*sprite_get_width(spr_castlehp));
var yy = room_height - sprite_get_height(spr_castlehp);
var hps = ceil((global.basehp/global.basemaxhp)*64);
// draw castle hp text
draw_set_alpha(1);
draw_set_font(fnt_default);
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

// draw wave progress
xx = room_width/4;
yy = room_height/20;
var wavemax = global.basemaxhp*0.5 + (global.basemaxhp*0.25*global.wave);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_text(xx-10,yy,"WAVE PROGRESS:");
draw_healthbar(xx,yy,room_width-xx,yy+8,100*(global.waveremaining/wavemax),c_orange,c_black,c_black,1,true,false);

// draw fade for pause
if(global.pause){
	if(pausealpha < 0.7){pausealpha+=0.02}
}
else{
	if(pausealpha > 0){pausealpha-=0.02;}
}
draw_set_color(c_black);
draw_set_alpha(pausealpha);
draw_rectangle(x,y,room_width,room_height,false);

// exit here if not paused
if(!global.pause){
	exit;
}

reset_draw();

// exit here if next wave data shouldn't be shown
if(!shownext){
	exit;
}
// determine between-wave text
var nextwave = "";
if(global.nextwave == 0){
	nextwave = "NEW ENEMY!";
	if(global.wave == 8){
		nextwave = "???";
		global.wavedesc = "Something big is approaching...";
	}
}
else{
	nextwave = "ENEMY MODIFIER!";
}
var weapontext = "";
if(global.wave == 0){weapontext = "Choose a weapon to fight off the enemies!";}
else{weapontext = "Choose a weapon to combine into your current weapon!";}

draw_set_halign(fa_center);
draw_set_font(fnt_defaultbig);
var xx = room_width/2;
var yy = room_height/10;
draw_text(xx,yy,"NEXT WAVE: " + nextwave);
draw_text(xx,yy+30,global.wavedesc);
if(global.nextwave == 0){
	// some hot spicy spaghetti to generate and draw the sprite
	var sprite = asset_get_index(string_replace(object_get_name(global.nextenemy),"obj","spr"));
	draw_sprite_ext(
	sprite,
	-1,
	xx,
	yy+100,
	2,2,0,c_white,draw_get_alpha());
}
draw_text(room_width/2,room_height/3,weapontext);

reset_draw();
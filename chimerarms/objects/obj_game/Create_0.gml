// ENTROPY
randomize();

// initial variables
global.playerspawn = [0,0];
global.time = 0;
global.wave = 0;
global.basehp = 100;
global.basemaxhp = 100;
global.weapon_list = ds_list_create();
ds_list_add(global.weapon_list,[spr_sword,irandom_range(0,9)],[spr_gun,irandom_range(0,2)],[spr_dagger,irandom_range(0,4)],[spr_axe,irandom_range(0,5)])

// set cursor
cursor_sprite = spr_cursor;
window_set_cursor(cr_none);
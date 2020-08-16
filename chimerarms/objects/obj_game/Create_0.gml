// initial variables
global.time = 0;
global.wave = 0;
global.basehp = 100;
global.weapon_list = ds_list_create();
ds_list_add(global.weapon_list,[spr_sword,3],[spr_gun,2],[spr_dagger,4],[spr_spear,1])

// set cursor
cursor_sprite = spr_cursor;
window_set_cursor(cr_none);
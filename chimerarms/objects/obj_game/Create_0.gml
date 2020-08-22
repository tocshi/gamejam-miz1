// ENTROPY
randomize();

// initial variables
global.playerspawn = [0,0];
global.time = 0;
global.wave = 0;
global.basehp = 1000;
global.basemaxhp = 1000;
global.basex = 0;
global.basey = 0;
global.weapon_list = ds_list_create();
ds_list_add(global.weapon_list,[spr_sword,irandom_range(0,9)],[spr_gun,irandom_range(0,2)],[spr_dagger,irandom_range(0,4)],[spr_bow,irandom_range(0,4)])

// player modifiers
global.player_atkmod = 50;
global.player_atkspeed = 1.2;
global.player_hitmod = 0;
global.player_piercemod = 1;
global.player_rangemod = 1;
global.shotmode = 0;

// enemy modifiers
global.enemy_atkmod = 1;
global.enemy_defmod = 0;
global.enemy_speedmod = 1;
global.enemy_sizemod = 1;
global.enemy_hpmod = 1;
global.enemy_rangemod = 1;

// set cursor
cursor_sprite = spr_cursor;
window_set_cursor(cr_none);


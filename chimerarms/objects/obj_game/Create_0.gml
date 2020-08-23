// ENTROPY
randomize();

// initial variables
if(!variable_instance_exists(self,"seenTutorial")){seenTutorial = false;}
global.pause = false;
pausealpha = 0;
global.time = 0;
global.wave = 6;
global.waveremaining = 1;
global.basehp = 1000;
global.basemaxhp = 1000;
healing = false;
global.basex = 0;
global.basey = 0;
global.weapon_list = ds_list_create();
global.enemy_list = ds_list_create();
ds_list_add(global.weapon_list,[spr_sword,irandom_range(0,9)]);
ds_list_add(global.enemy_list,obj_enemy_soldier);
get_weapon_name();

// next wave info - 0 is enemy, 1 is modifier
global.nextwave = 0;
global.nextenemy = spr_empty;
global.nextmodifier = "";
global.wavedesc = "";

// player modifiers
global.player_atkmod = 1;
global.player_atkspeed = 1.2;
global.player_hitmod = 0;
global.player_piercemod = 1;
global.player_rangemod = 1;
global.shotmode = 0;

// enemy modifiers
global.enemy_atkmod = 1;
global.enemy_defmod = 1;
global.enemy_speedmod = 1;
global.enemy_sizemod = 1;
global.enemy_hpmod = 1;
global.enemy_rangemod = 1;

// set cursor
cursor_sprite = spr_cursor;
window_set_cursor(cr_none);


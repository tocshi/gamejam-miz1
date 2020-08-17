// initial variables
// atktype is whether it's melee(0) or ranged(1)
atktype = 0;
atk = 0;
atkspeed = 1;
hitmod = 1;
piercemod = 0;
duration = 60;
anchor = obj_player;
dir = 1;

// tracks enemies hit
hitlist = ds_list_create();

event_inherited();
// enemy stats
maxhp = 60 * global.enemy_hpmod;
hp = maxhp;
atk = 35 * global.enemy_atkmod;
def = 0 + global.enemy_defmod;
atkspeed = 1;
rangemod = global.enemy_rangemod;
sizemod = global.enemy_sizemod;
movespeed = 0.9 * global.enemy_speedmod;
moveacc = 0.05;
grav = 0;
image_index = irandom_range(0,image_number-1);
image_speed = 1;

// move destination
destX = 0;
destY = room_height/2 + irandom_range(-80,150);
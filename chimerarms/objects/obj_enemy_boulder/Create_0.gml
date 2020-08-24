event_inherited();
// enemy stats
maxhp = 180 * global.enemy_hpmod;
hp = maxhp;
atk = 80 * global.enemy_atkmod;
def = 45 * global.enemy_defmod;
atkspeed = 0.25;
range = 300;
rangemod = global.enemy_rangemod;
sizemod = global.enemy_sizemod;
movespeed = 0.6 * global.enemy_speedmod;
moveacc = 0.05;
grav = 0.5;
// for attack targetingd
dir = 1;
image_index = irandom_range(0,image_number-1);
image_speed = 0;

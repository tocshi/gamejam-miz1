event_inherited();
// enemy stats
maxhp = 200 * global.enemy_hpmod;
hp = maxhp;
atk = 80 * global.enemy_atkmod;
def = 50 * global.enemy_defmod;
atkspeed = 1;
rangemod = global.enemy_rangemod;
sizemod = global.enemy_sizemod;
movespeed = 0.65 * global.enemy_speedmod;
moveacc = 0.05;
grav = 0.5;
image_index = irandom_range(0,image_number-1);
image_speed = 0;

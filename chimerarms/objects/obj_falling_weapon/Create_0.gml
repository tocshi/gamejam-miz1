sprite_index = choose(random_melee(),random_ranged());
image_index = irandom(sprite_get_number(sprite_index));
image_speed = 0;
vspeed = random_range(0.1,3);
dir = choose(-1,1);
rot = random_range(1,6);
// set global spawn
global.playerspawn = [x,y];

// initial variables
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
grav = 0.5;
// more reactive attack direction
facing = 1;
canMove = true;
canJump = true;
onPlatform = 0;
isMoving = false;
canAttack = true;
atkTimer = 0;
invincible = false;
//for use with gunshot
remaining = 0;

// player stats
event_perform(ev_other,ev_user0);


// initial variables
image_speed = 0;
canMove = true;
canJump = true;
onPlatform = 0;
isMoving = false;
canAttack = true;
atkTimer = 0;
invincible = false;
fading = false;
expanding = false;
// for variation in movement
time_offset = irandom(30);

// enemy stats (these are reinitialized upon instance creation)
hp = 1;
maxhp = 1;
atk = 1;
def = 0;
atkspeed = 1.2;
rangemod = 1;
sizemod = 1;
movespeed = 3;
moveacc = 0.2;
grav = 0.5;


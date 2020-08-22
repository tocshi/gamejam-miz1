// resolve time
global.time++;

// anything after this does not execute if the game needs to pause
if(global.pause){exit;}

// resolve points
if(global.time % 30 == 0 && global.wave > 0){
	spawn_enemy();
}

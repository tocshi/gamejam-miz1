// resolve time
global.time++;

if(room == rm_title){exit;}

if(healing){
	if(global.basehp < global.basemaxhp){
		global.basehp += global.basemaxhp/60;
	}
	else{
		global.basehp = global.basemaxhp
		healing = false;
	}
}

// anything after this does not execute if the game needs to pause
if(global.pause){exit;}

// resolve spawns
if(global.time % 30 == 0 && global.wave > 0 && global.waveremaining > 0){
	spawn_enemy();
}

// check defeat
if(global.basehp <= 0){
	defeat = true;
	global.pause = true;
	with(obj_enemy){instance_destroy();}
}

// END WAVE
if(global.waveremaining <= 0 && instance_number(obj_enemy) <= 0){
	global.pause = true;
	alarm[1] = 60;
}
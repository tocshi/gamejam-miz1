/// @description WAVE START
shownext = false;
global.pause = false;
global.wave++;

if(global.wave == 9){
	healing = true;
	instance_create_layer(room_width*1.3,room_height/3,"Instances",obj_enemy_harbinger);
	global.waveremaining *= 9999999;
}
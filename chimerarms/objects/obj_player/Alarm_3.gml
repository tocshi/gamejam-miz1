/// @description gunshot
if(remaining <= 0){exit;}
var targetlist = ds_list_create();
var angle = point_direction(x,y,mouse_x,mouse_y)+random_range(-3,3);
var xx = x+lengthdir_x(320*rangemod,angle);
var yy = y+lengthdir_y(320*rangemod,angle);
var hitleft = hitmod;
// note: this is my first time making a hitscan, don't judge
collision_line_list(x,y,xx,yy,obj_enemy,true,true,targetlist,true);
for(var i = 0; i < ds_list_size(targetlist); ++i){
	if(hitleft <= 0){
		break;
	}
	else{
		hitleft--;
		// end line effect here, must check here as well so I can't move it earlier...either that or I'm a dumbass
		if(hitleft <= 0){
			var dist = distance_to_point(targetlist[| i].x,targetlist[| i].y);
			xx = x+lengthdir_x(dist,angle);
			yy = y+lengthdir_y(dist,angle);
		}
		// had to do this cuz I made an oversight in how the script functions, oh well
		var tempatk = atk;
		atk *= 0.7/3;
		deal_damage(targetlist[| i]);
		atk = tempatk;
	}
}
ds_list_destroy(targetlist);
targetlist = -1;
alarm[3] = 10;
// tick down shots remaining
remaining--;

// create particle effect
with(instance_create_layer(x,y,"Attacks",obj_shotline)){
	destX = xx;
	destY = yy;
}
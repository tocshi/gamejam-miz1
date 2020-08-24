///@description eXPLOSION
audio_play_sound(snd_explode,3,0);
// hurt yourself
if(point_distance(x,y,obj_player.x,obj_player.y) < 64){
	with(obj_player){
		event_perform(ev_collision,obj_enemy);
		if(hp > 0){
			vspeed += -1*min(20,abs(6/lengthdir_y(point_distance(x,y,other.x,other.y),point_direction(x,y,other.x,other.y))));
			hspeed += 6/lengthdir_x(point_distance(x,y,other.x,other.y),point_direction(x,y,other.x,other.y));
		}
	}
}

var targetlist = ds_list_create();
var hitleft = hitmod;
collision_circle_list(x,y,96,obj_enemy,true,true,targetlist,true);
for(var i = 0; i < ds_list_size(targetlist); ++i){
	if(hitleft <= 0){
		break;
	}
	else{
		hitleft--;
		deal_damage(targetlist[| i]);
	}
}
ds_list_destroy(targetlist);
targetlist = -1;

// explosion effect
repeat(7){
	with(instance_create_layer(x,y,"Attacks",obj_smoke)){
		image_alpha = random_range(0.3,0.8);
		image_blend = make_color_hsv(random_range(0,40),random_range(0,200),255)
		sprite_index = choose(spr_smoke,spr_explosion);
		image_angle = irandom_range(0,359);
		x += irandom_range(-10,10);
		y += irandom_range(-10,10);
		image_xscale = random_range(2,4);
		image_yscale = random_range(2,4);
	}
}

instance_destroy();

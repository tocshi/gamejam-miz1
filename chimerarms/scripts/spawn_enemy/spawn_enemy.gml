if(ds_list_empty(global.enemy_list)){show_error("enemy list empty, but how?",true);}

var numEnemy = instance_number(obj_enemy);
var roll = irandom_range(0,ds_list_size(global.enemy_list)-1);
var rollmod = 1/(logn(exp(1),(numEnemy/(0.5*(global.wave+1)))+1.1))-0.6;
show_debug_message(rollmod)
var enemy = global.enemy_list[| roll];
var xx = room_width*1.1;
var yy = irandom_range(room_height/4,room_height/1.5);

switch(enemy){
	case obj_enemy_soldier:
	if(random(8) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_flier:
	if(random(8) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_caster:
	if(random(8) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_spitter:
	if(random(8) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_protector:
	if(random(14) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_grouper:
	if(random(3) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_boulder:
	if(random(14) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_enforcer:
	if(random(14) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_swarmer:
	if(random(3) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	case obj_enemy_corrupter:
	if(random(14) > rollmod){break;}
	instance_create_layer(xx,yy,"Instances",enemy);
	break;
	
	default:
	show_error("somehow rolled an enemy that doesn't exist. how tho?", true);
}
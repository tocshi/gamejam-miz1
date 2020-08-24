/// @description WAVE END generate next wave stuff

// Ok this data could be stored better but that's an optimization for another time

// generate weapon and weapon buttons
var buttons = ds_list_create();
ds_list_add(buttons,random_melee(),random_ranged());
var roll = 0;
while(ds_list_size(buttons) < 3){
	roll = choose(random_melee(),random_ranged());
	if(ds_list_find_index(buttons,roll) < 0){
		ds_list_add(buttons,roll);
	}
}
ds_list_shuffle(buttons);
// create button instance
for(var i = 0; i < 3; ++i){
	var xx = (i+1)*(room_width/4);
	var yy = 3*(room_height/5);
	with(instance_create_depth(xx,yy,-1,obj_weapon_button)){
		x -= width/2;
		y -= height/2;
		orig_sprite = buttons[| i];
		sprite = create_weapon_sprite(orig_sprite);
		index = irandom(sprite_get_number(orig_sprite));
		// get text
		event_perform(ev_other,ev_user0);
	}
}
ds_list_destroy(buttons);
buttons = -1;

if(global.wave % 2 == 0){
	global.nextwave = 0;
	
	// wave 9 summons boss, so we'll skip this
	if(global.wave == 8){exit;}
	// generate enemy
	var enemy = 0;
	while (enemy <= 0){
		var roll = 0;
		if(global.wave < 2){
			roll=choose(
			obj_enemy_soldier,
			obj_enemy_flier,
			obj_enemy_caster,
			obj_enemy_spitter);
		}
		else{
			roll=choose(
			obj_enemy_soldier,
			obj_enemy_flier,
			obj_enemy_caster,
			obj_enemy_spitter,
			obj_enemy_protector,
			obj_enemy_boulder,
			obj_enemy_grouper,
			obj_enemy_enforcer,
			obj_enemy_corrupter,
			obj_enemy_swarmer);
		}
		if(ds_list_find_index(global.enemy_list,roll) < 0){
			enemy = roll;
		}
	}
	global.nextenemy = enemy;
	ds_list_add(global.enemy_list,global.nextenemy);
	
	// generate description
	switch(global.nextenemy){
		case obj_enemy_soldier:
		global.wavedesc = "Soldier: a standard enemy that mindlessly runs towards the castle";
		break;
			
		case obj_enemy_flier:
		global.wavedesc = "Flier: a flying enemy that flies towards the castle";
		break;
		
		case obj_enemy_caster:
		global.wavedesc = "Caster: a standard enemy that can shoot ranged magic bolts";
		break;
			
		case obj_enemy_spitter:
		global.wavedesc = "Spitter: a flying enemy that spits ranged corrosive liquids";
		break;
			
		case obj_enemy_protector:
		global.wavedesc = "Protector: a grounded melee enemy with high defense";
		break;
		
		case obj_enemy_boulder:
		global.wavedesc = "Boulder: a grounded enemy with high defense that throws rolling rocks";
		break;
			
		case obj_enemy_grouper:
		global.wavedesc = "Grouper: these grounded enemies tend to come in large numbers";
		break;
			
		case obj_enemy_enforcer:
		global.wavedesc = "Enforcer: a flying melee enemy with high defense";
		break;
		
		case obj_enemy_corrupter:
		global.wavedesc = "Corrupter: a flying enemy with high defense that throws flaming javelins from above";
		break;
			
		case obj_enemy_swarmer:
		global.wavedesc = "Swarmer: these flying enemies tend to come in large numbers";
		break;
	}
}
else{
	global.nextwave = 1;
	// generate modifier and description
	global.nextmodifier = choose("atk","def","speed","range","hp","size");
	switch(global.nextmodifier){
		case "atk":
		global.enemy_atkmod *= 1.3;
		global.wavedesc = "The enemies deal 30% more damage!";
		break;
			
		case "def":
		global.enemy_defmod *= 1.3;
		global.wavedesc = "The enemies have 30% more defense!";
		break;
			
		case "speed":
		global.enemy_speedmod *= 1.25;
		global.wavedesc = "The enemies move 25% faster!";
		break;
			
		case "range":
		global.enemy_rangemod *= 1.5;
		global.wavedesc = "The ranged enemies gain 50% more range!";
		break;
			
		case "hp":
		global.enemy_hpmod *= 1.2;
		global.wavedesc = "The enemies gain 20% more maximum health!";
		break;
			
		case "size":
		global.enemy_sizemod *= 0.8;
		global.wavedesc = "The enemies are 20% smaller!";
		break;
	}
}
/// @description WAVE END generate next wave stuff

// Ok this data could be stored better but that's an optimization for another time
global.pause = true;
if(global.wave % 2 == 0){
	global.nextwave = 0;
	// generate enemy
	var enemy = 0;
	while (enemy <= 0){
		var roll = 0;
		if(global.wave < 2){
			roll =choose(
			obj_enemy_soldier,
			obj_enemy_flier);
		}
		else{
			roll =choose(
			obj_enemy_soldier,
			obj_enemy_flier,
			obj_enemy_protector,
			obj_enemy_grouper,
			obj_enemy_enforcer,
			obj_enemy_swarmer);
		}
		if(ds_list_find_index(global.enemy_list,roll) < 0){
			enemy = roll;
		}
	}
	global.nextenemy = enemy;
	
	// generate description
	switch(global.nextenemy){
		case obj_enemy_soldier:
		global.wavedesc = "Soldier: a standard enemy that mindlessly runs towards the castle";
		break;
			
		case obj_enemy_flier:
		global.wavedesc = "Flier: a standard enemy that flies towards the castle";
		break;
			
		case obj_enemy_protector:
		global.wavedesc = "Protector: a grounded melee enemy with high defense";
		break;
			
		case obj_enemy_grouper:
		global.wavedesc = "Grouper: these grounded enemies tend to come in large numbers";
		break;
			
		case obj_enemy_enforcer:
		global.wavedesc = "Enforcer: a flying melee enemy with high defense";
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
		global.enemy_speedmod *= 1.3;
		global.wavedesc = "The enemies move 30% faster!";
		break;
			
		case "range":
		global.enemy_rangemod *= 1.5;
		global.wavedesc = "The ranged enemies gain 50% more range!";
		break;
			
		case "hp":
		global.enemy_atkmod *= 1.3;
		global.wavedesc = "The enemies gain 30% more maximum health!";
		break;
			
		case "size":
		global.enemy_atkmod *= 0.6;
		global.wavedesc = "The enemies are 40% smaller!";
		break;
	}
}
var base = "";
var prefix = "";
var suffix = "";
var name = "";

// I know this code is spaghetti af but I didn't have much time
for(var i = 0; i < ds_list_size(global.weapon_list); ++i){
	var weapon = array_get(global.weapon_list[| i],0);
	if(i == 0){
		switch(weapon){
			case spr_sword:
			base = "Blade";
			break;
			
			case spr_spear:
			base = "Spear";
			break;
			
			case spr_dagger:
			base = "Knife";
			break;
			
			case spr_hammer:
			base = "Hammer";
			break;
			
			case spr_axe:
			base = "Axe";
			break;
			
			case spr_bow:
			base = "Bow";
			break;
			
			case spr_staff:
			base = "Staff";
			break;
			
			case spr_gun:
			base = "Rifle";
			break;
			
			case spr_launcher:
			base = "Launcher";
			break;
			
			default:
		}
	}
	else{
		switch(weapon){
			case spr_sword:
			prefix = "Slicing ";
			break;
			
			case spr_spear:
			prefix = "Piercing ";
			break;
			
			case spr_dagger:
			prefix = "Shanking ";
			break;
			
			case spr_hammer:
			prefix = "Battering ";
			break;
			
			case spr_axe:
			prefix = "Chopping ";
			break;
			
			case spr_bow:
			suffix = "-fletcher";
			break;
			
			case spr_staff:
			suffix = "-conjurer";
			break;
			
			case spr_gun:
			suffix = "-shooter";
			break;
			
			case spr_launcher:
			suffix = "-blaster";
			break;
			
			default:
		}
	}
}

name = prefix + base + suffix;
return name;
// interact behaviour
if(mouse_check_button_pressed(mb_left)){
	if(mouse_x >= x && mouse_x <= x+width && mouse_y >= y && mouse_y <= y+height && clickable){
		// switch based on weapon sprite
		switch(orig_sprite){
			case spr_sword:
			global.player_atkmod *= 1.1;
			global.player_atkspeed = (global.player_atkspeed+1.2)/2;
			global.meleemode = 1;
			break;
			
			case spr_spear:
			global.player_atkmod *= 1.08;
			global.player_atkspeed = (global.player_atkspeed+1)/2;
			global.player_rangemod *= 1.25;
			global.meleemode = 1;
			break;
			
			case spr_dagger:
			global.player_atkmod *= 1.05;
			global.player_atkspeed = (global.player_atkspeed+1.2)/2;
			global.player_rangemod *= 1;
			global.meleemode = 1;
			break;
			
			case spr_hammer:
			global.player_atkmod *= 1.06;
			global.player_atkspeed = (global.player_atkspeed+0.8)/2;
			global.player_piercemod *= 0.8;
			global.meleemode = 1;
			break;
			
			case spr_axe:
			global.player_atkmod *= 1.06;
			global.player_atkspeed = (global.player_atkspeed+0.75)/2;
			global.player_hitmod++;
			global.meleemode = 1;
			break;
			
			case spr_bow:
			global.player_atkmod *= 1.1;
			global.player_atkspeed = (global.player_atkspeed+1.2)/2;
			global.shotmode = 1;
			break;
			
			case spr_staff:
			global.player_atkmod *= 1.05;
			global.player_atkspeed = (global.player_atkspeed+1.1)/2;
			global.player_piercemod *= 0.6;
			global.shotmode = 2;
			break;
			
			case spr_gun:
			global.player_atkmod *= 1.06;
			global.player_atkspeed = (global.player_atkspeed+1.4)/2;
			global.player_rangemod *= 1.15;
			global.shotmode = 3;
			break;
			
			case spr_launcher:
			global.player_atkmod *= 1.08;
			global.player_atkspeed = (global.player_atkspeed+0.65)/2;
			global.player_hitmod++;
			global.shotmode = 4;
			break;
			
			default:
		}
		// add stats to player
		ds_list_add(global.weapon_list,[orig_sprite,index]);
		with(obj_player){
			event_perform(ev_other,ev_user0);
		}
		clicked = true;
		text = "";
		alarm[0] = 60;
	}
}

if(clicked){
	x = lerp(x,room_width/2-width/2,0.2);
	//y = lerp(y,room_height/2-height/2,0.2);
	with(obj_weapon_button){
		clickable = false;
		if(id != other.id){
			vspeed += 0.2;
		}	
	}
}

// advance to next wave
if(newWeapon && mouse_check_button_pressed(mb_left)){alarm[1] = 1;}
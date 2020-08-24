/// @description show new weapon
clicked = false;
newWeapon = true;
// print different text if it's wave 0
if(global.wave == 0){
	text = "You have chosen to use the " + 
	string_replace(sprite_get_name(orig_sprite),"spr_","") + "!" +
	"\n\n Click to continue...";
}
else{
	text = "Awesome! You have combined the " + 
	string_replace(sprite_get_name(orig_sprite),"spr_","") + 
	" into your weapon to create the\n" + get_weapon_name() + "!" +
	"\n\n Click to continue...";
}

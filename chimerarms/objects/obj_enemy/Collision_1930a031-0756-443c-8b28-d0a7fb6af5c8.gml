// deduct castle hp if base
if(other.base){
	fading = true;
	expanding = true;
	mask_index = spr_empty;
	global.basehp -= atk;
	hp = 0;
}

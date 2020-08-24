/// @description set text
// switch based on weapon sprite
switch(orig_sprite){
	case spr_sword:
	text = "Sword\n+10% damage\nFast attack speed\nGrants melee attack";
	break;
			
	case spr_spear:
	text = "Spear\n+8% damage\nSlow attack speed\nLonger attack range\nGrants melee attack";
	break;
			
	case spr_dagger:
	text = "Dagger\n+3% damage\nFastest attack speed\nShorter attack range\nGrants melee attack";
	break;
			
	case spr_hammer:
	text = "Hammer\n+8% damage\nSlower attack speed\nIgnores 25% defense\nGrants melee attack";
	break;
			
	case spr_axe:
	text = "Axe\n+6% damage\nSlower attack speed\nHits 1 extra enemy\nGrants melee attack";
	break;
			
	case spr_bow:
	text = "Bow\n+10% damage\nFast attack speed\nShoots arcing arrows";
	break;
			
	case spr_staff:
	text = "Staff\n+5% damage\nSlow attack speed\nIgnores 40% defense\nShoots magic bolts";
	break;
			
	case spr_gun:
	text = "Rifle\n+6% damage\nFaster attack speed\nLonger attack range\nShoots 3-round burst";
	break;
			
	case spr_launcher:
	text = "Rocket Launcher\n+8% damage\nSlowest attack speed\nHits 1 extra enemy\nShoots exploding rockets";
	break;
			
	default:
}
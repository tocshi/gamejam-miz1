var target = argument0
var dmg = max(1,atk-(other.def*max(0,piercemod)));
other.hp -= dmg;

with(instance_create_layer(irandom_range(target.x-10,target.x+10), 
							y-32, 
							"GUI", obj_dmgtxt)){
	self.dmg = dmg;						
}
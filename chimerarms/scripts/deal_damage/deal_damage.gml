var target = argument0
// prevent hitting offscreen enemies
if(target.x > room_width){exit;}

var dmg = max(1,atk*((100-(target.def*max(0,piercemod)))/100));
target.hp -= dmg;

with(instance_create_layer(irandom_range(target.x-10,target.x+10), 
							target.y-32, 
							"GUI", obj_dmgtxt)){
	self.dmg = string_format(dmg,1,0);						
}
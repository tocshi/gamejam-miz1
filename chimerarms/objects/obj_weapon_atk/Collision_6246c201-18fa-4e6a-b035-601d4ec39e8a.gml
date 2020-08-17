if(atktype == 0 && hitmod > 0){
	hitmod--;
	ds_list_add(hitlist,other.id);
	deal_damage(other);
}

if(atktype == 0 && hitmod > 0){
	hitmod--;
	if(ds_list_find_index(hitlist,other) < 0){
		deal_damage(other);
	}
	ds_list_add(hitlist,other);
}

if(atktype == 0 && hitmod > 0){
	if(ds_list_find_index(hitlist,other) < 0){
		hitmod--;
		deal_damage(other);
	}
	ds_list_add(hitlist,other);
}

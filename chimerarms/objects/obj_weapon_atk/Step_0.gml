if(!instance_exists(anchor)){
	instance_destroy();
	exit;
}

//tick down duration
duration--;
if(duration <= 0){instance_destroy()};



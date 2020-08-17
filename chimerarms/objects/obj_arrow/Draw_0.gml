if(!attached){
	image_angle = (point_direction(xprevious,yprevious,x,y))-45;
}
else{ 
	// move with anchor
	if(instance_exists(anchor)){
		var xdelta = anchor.x-anchor.xprevious;
		var ydelta = anchor.y-anchor.yprevious;
		x += xdelta;
		y += ydelta;
	}
	else{
		// anchor is gone, just destroy yourself lol
		instance_destroy();
	}
}
draw_self();

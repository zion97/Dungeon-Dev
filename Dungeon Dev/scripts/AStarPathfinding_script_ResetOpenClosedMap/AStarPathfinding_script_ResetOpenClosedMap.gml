function AStarPathfinding_script_ResetOpenClosedMap() {
	var i;
	for (i = 0; i < height * width; i += 1) {
	    openclosedmap[i] = 0;
	}
	closedvalue = 2;
	openvalue = 1;


}

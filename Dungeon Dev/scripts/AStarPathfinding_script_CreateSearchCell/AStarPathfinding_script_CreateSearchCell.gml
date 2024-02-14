function AStarPathfinding_script_CreateSearchCell(argument0, argument1, argument2, argument3) {
	with (instance_create(0, 0, AStarPathfinding_object_cell)) {
	    xcoord = argument0;
	    ycoord = argument1;
	    cellid = xcoord + ycoord * argument2;
	    parent = argument3;
	    G = 0;
	    H = 0;
	    return id;
	}


}

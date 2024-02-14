function AStarPathfinding_script_CheckNoCollision(argument0, argument1) {
	var xx, yy, i, ii;
	xx = argument0;
	yy = argument1;
	if (xx < 0 || xx + unitwidth > map.width || yy < 0 || yy + unitwidth > map.height) { return false; }
	if (unitwidth > 1) {
	    for (i = xx; i < xx + unitwidth; i += 1) {
	        for (ii = yy; ii < yy + unitwidth; ii += 1) {
	            if (as_map_getcell(map, i, ii) < 0) { return false; }
	        }
	    }
	    return true;
	} else {
	    return (as_map_getcell(map, xx, yy) >= 0);
	}


}

function AStarPathfinding_script_Heuristic(argument0, argument1) {
	with (argument0) {
	    var xx, yy;
	    xx = abs(xcoord - argument1.xcoord);
	    yy = abs(ycoord - argument1.ycoord);

	    var tiebreak;
	    tiebreak = 1.0002;

	    if (xx > yy) {
	        return (0.41421 * yy + xx) * tiebreak;
	    } else {
	        return (0.41421 * xx + yy) * tiebreak;
	    }
	}


}

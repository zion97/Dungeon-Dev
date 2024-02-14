function AStarPathfinding_script_SetRectangle(argument0, argument1, argument2, argument3, argument4) {
	var xx, yy, ww, hh, value;
	xx = argument0;
	yy = argument1;
	ww = argument2;
	hh = argument3;
	value = argument4;
	var i, ii;
	for (i = xx; i < xx + ww; i += 1) {
	    for (ii = yy; ii < yy + hh; ii += 1) {
	        AStarPathfinding_script_SetCell(i, ii, value);
	    }
	}


}

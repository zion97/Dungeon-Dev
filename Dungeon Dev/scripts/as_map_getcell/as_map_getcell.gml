function as_map_getcell(argument0, argument1, argument2) {
	// as_map_getcell(map,x,y);
	///@param map
	///@param x
	///@param y
	// Returns the cost of tile with given x and y (negative number for impassible).

	with (argument0) {
	    return AStarPathfinding_script_GetCell(argument1, argument2);
	}


}

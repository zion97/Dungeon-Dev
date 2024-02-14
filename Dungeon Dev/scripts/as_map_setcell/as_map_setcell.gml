function as_map_setcell(argument0, argument1, argument2, argument3) {
	// as_map_setcell(map,x,y,value);
	///@param map
	///@param x
	///@param y
	///@param value
	// Sets the cost of tile with given x and y to value (negative number for impassible).

	with (argument0) {
	    AStarPathfinding_script_SetCell(argument1, argument2, argument3);
	}


}

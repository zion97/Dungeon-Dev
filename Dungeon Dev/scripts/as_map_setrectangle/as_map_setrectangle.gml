function as_map_setrectangle(argument0, argument1, argument2, argument3, argument4, argument5) {
	// as_map_setrectangle(map,x,y,width,height,value);
	///@param map
	///@param x
	///@param y
	///@param width
	///@param height
	///@param value
	// Sets the cost of tiles in rectangle with given x, y, width, and height to given value (negative number for impassible).

	with (argument0) {
	    AStarPathfinding_script_SetRectangle(argument1, argument2, argument3, argument4, argument5);
	}


}

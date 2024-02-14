/// as_map_create(width,height,value);
///@param width
///@param height
///@param value
function as_map_create(argument0, argument1, argument2) {
	// Returns a new grid to do pathfinding on with width * height squares. All squares are initialized with value (cost to move into it, negative for unwalkable).
	// It's important to make open ground a value of 1 in most situations. Having values between 0 and 1 will produce paths that aren't necessarily the best paths.
	//      Values larger than 1 will cause the pathfinding to be slower.

	with (instance_create(0, 0, AStarPathfinding_object_map)) {
	    width = argument0;
	    height = argument1;
	    AStarPathfinding_script_SetRectangle(0, 0, width, height, argument2);
	    AStarPathfinding_script_ResetOpenClosedMap();
	    return id;
	}


}

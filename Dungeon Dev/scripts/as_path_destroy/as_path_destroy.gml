function as_path_destroy(argument0) {
	// as_path_destroy(path);
	///@param path
	// Frees memory used by path.

	with (argument0) {
	    AStarPathfinding_script_ClearPath();
	    AStarPathfinding_script_ClearOpenList();
	    AStarPathfinding_script_ClearClosedList();
	    ds_list_destroy(path);
	    ds_list_destroy(openList);
	    ds_list_destroy(closedList);
	    instance_destroy();
	}


}

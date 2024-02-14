function as_map_destroy(argument0) {
	// as_map_destroy(map);
	///@param map
	// Frees memory used by map.

	with (argument0) {
	    AStarPathfinding_script_DestroyInfluenceMapGroup(-1);
	    instance_destroy();
	}


}

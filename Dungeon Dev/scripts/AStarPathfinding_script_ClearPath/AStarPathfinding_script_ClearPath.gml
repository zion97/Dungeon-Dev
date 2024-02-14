function AStarPathfinding_script_ClearPath() {
	var i;
	for (i = 0; i < ds_list_size(path); i += 1) {
	    with (path[| i]) {
	        instance_destroy();
	    }
	}
	ds_list_clear(path);


}

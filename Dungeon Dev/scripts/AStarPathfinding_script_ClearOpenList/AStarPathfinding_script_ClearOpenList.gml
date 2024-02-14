function AStarPathfinding_script_ClearOpenList() {
	var i;
	for (i = 0; i < ds_list_size(openList); i += 1) {
	    with (openList[| i]) {
	        instance_destroy();
	    }
	}
	ds_list_clear(openList);


}

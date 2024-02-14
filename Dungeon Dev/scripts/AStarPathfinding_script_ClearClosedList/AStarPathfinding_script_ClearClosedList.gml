function AStarPathfinding_script_ClearClosedList() {
	var i;
	for (i = 0; i < ds_list_size(closedList); i += 1) {
	    with (closedList[| i]) {
	        instance_destroy();
	    }
	}
	ds_list_clear(closedList);


}

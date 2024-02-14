function as_path_removefirst(argument0) {
	// as_path_removefirst(path);
	///@param path
	// Removes first node from a path (second item in path is now first and at index 0). Make sure path has a node.

	with (argument0) {
	    var lastindex;
	    lastindex = ds_list_size(path)-1;
	    with (path[| lastindex]) {
	        instance_destroy();
	    }
	    ds_list_delete(path, lastindex);
	}


}

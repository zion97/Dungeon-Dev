function as_path_nodex(argument0, argument1) {
	// as_path_nodex(path,index);
	///@param path
	///@param index
	// Returns x position of node that has given index in given path (0 is first, as_path_length-1 is last).

	with (argument0) {
	    return path[| ds_list_size(path)-1-argument1].xcoord;
	}


}

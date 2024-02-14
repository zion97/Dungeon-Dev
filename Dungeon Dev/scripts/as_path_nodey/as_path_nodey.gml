function as_path_nodey(argument0, argument1) {
	// as_path_nodey(path,index);
	///@param path
	///@param index
	// Returns y position of node that has given index in given path (0 is first, as_path_length-1 is last).

	with (argument0) {
	    return path[| ds_list_size(path)-1-argument1].ycoord;
	}


}

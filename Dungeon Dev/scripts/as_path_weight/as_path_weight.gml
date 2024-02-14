///as_path_weight(map,path)
///@param map
///@param path
function as_path_weight(argument0, argument1) {
	/*
		calculates the total weight of a path adding up all nodes
	*/
	var _m = argument0;
	var _p = argument1;
	var _pw = 0;
	for(var _n = 0; _n < as_path_length(_p); _n++){
		_pw += as_map_getcell(_m,as_path_nodex(_p,_n),as_path_nodey(_p,_n));
	}
	return _pw;


}

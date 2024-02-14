///instance_create(x,y,object_index)
///@param x
///@param y
///@param object_index
///@desc Wrapper function for instance_create_depth
function instance_create(argument0, argument1, argument2) {
	return instance_create_depth(argument0,argument1,0,argument2);


}

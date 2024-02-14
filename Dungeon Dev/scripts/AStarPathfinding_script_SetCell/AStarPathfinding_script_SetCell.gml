function AStarPathfinding_script_SetCell(argument0, argument1, argument2) {
	var xx, yy, value;
	xx = argument0;
	yy = argument1;
	value = argument2;
	map[xx + yy * width] = value;


}

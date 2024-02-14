function as_path_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	// as_path_create(map,xstart,ystart,xgoal,ygoal,unitwidth,diag,maxdepth);
	///@param map
	///@param xstart
	///@param ystart
	///@param xgoal
	///@param ygoal
	///@param unitwidth
	///@param diag
	///@param maxdepth
	// Returns a new path from xstart and ystart to xgoal and ygoal (the pathfinding is done when you call this function).
	//      The path will have length of 0 if no path can be found.
	// unitwidth says how many tiles an object takes up (all objects are square, so an object with width 3 takes up 9 tiles in a square).
	//      The x and y values refer to the top left tile of this object.
	// maxdepth is number of items in open list that will be examined before quitting and saying path can't be found.
	//      Set negative to make this infinite (will always find a path if availble, but may take too long on huge maps).
	// if diag is 0 then the path will have no diagonal moves. If diag is 1 then diagonals will be allowed even if they cut corners.
	//      If diag is 2 then diagonals will be allowed only if they don't cut corners.
	// This means that it is valid to move from A to B in the given picture (with X as wall) only if diag is 1:
	// AX
	// XB
	// mp_grid doesn't allow the cutting of corners.

	with (instance_create(0, 0, AStarPathfinding_object_path)) {
	    path = ds_list_create();
	    openList = ds_list_create();
	    closedList = ds_list_create();
    
	    map = argument0;
	    unitwidth = argument5;
	    diag = argument6;
	    maxdepth = argument7;
    
	    map.closedvalue += 2;
	    map.openvalue += 2;
	    if (map.closedvalue >= 9999999) {
	        with (map) {
	            AStarPathfinding_script_ResetOpenClosedMap();
	        }
	    }
    
	    AStarPathfinding_script_ClearPath();
	    AStarPathfinding_script_ClearOpenList();
	    AStarPathfinding_script_ClearClosedList();
    
	    if (argument1 != argument3 || argument2 != argument4) {
    
	        startCell = AStarPathfinding_script_CreateSearchCell(argument1, argument2, map.width, 0);
	        goalCell = AStarPathfinding_script_CreateSearchCell(argument3, argument4, map.width, 0);
	        startCell.H = AStarPathfinding_script_Heuristic(startCell, goalCell);
        
	        ds_list_add(openList, startCell);
	        map.openclosedmap[startCell.xcoord + startCell.ycoord * map.width] = map.openvalue;
	        map.openListMap[startCell.xcoord + startCell.ycoord * map.width] = 0;
    
	        if (AStarPathfinding_script_CheckNoCollision(goalCell.xcoord, goalCell.ycoord)) {
	            if (AStarPathfinding_script_CheckNoCollision(startCell.xcoord, startCell.ycoord)) {
	                AStarPathfinding_script_ContinuePath();
	            }
	        }
	    }
    
	    AStarPathfinding_script_ClearOpenList();
	    AStarPathfinding_script_ClearClosedList();
    
	    return id;
	}


}

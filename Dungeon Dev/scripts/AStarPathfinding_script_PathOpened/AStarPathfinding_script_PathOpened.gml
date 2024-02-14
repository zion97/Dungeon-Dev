function AStarPathfinding_script_PathOpened(argument0, argument1, argument2, argument3) {
	var xx, yy, newCost, parent;
	xx = argument0;
	yy = argument1;
	newCost = argument2;
	parent = argument3;

	var cellid;
	cellid = xx + yy * map.width;
	if (map.openclosedmap[cellid] == map.closedvalue) { return 0; }

	var newChild;
	newChild = AStarPathfinding_script_CreateSearchCell(xx, yy, map.width, parent);
	newChild.G = newCost;
	newChild.H = AStarPathfinding_script_Heuristic(newChild, goalCell);

	var i;

	if (map.openclosedmap[cellid] == map.openvalue) {
	    i = map.openListMap[cellid];
	    if (newChild.G < openList[| i].G) {
	        openList[| i].G = newChild.G;
	        openList[| i].parent = newChild.parent;
	        with (newChild) {
	            instance_destroy();
	        }
	        i += 1;
	    } else {
	        with (newChild) {
	            instance_destroy();
	        }
	        return 0;
	    }
	} else {
	    map.openclosedmap[cellid] = map.openvalue;
	    ds_list_add(openList, newChild);
	    i = ds_list_size(openList);
	    map.openListMap[openList[| i-1].xcoord + openList[| i-1].ycoord * map.width] = i-1;
	}

	while (i > 1) {
	    var u;
	    u = floor(i / 2);
	    if ((openList[| i-1].G+openList[| i-1].H) < (openList[| u-1].G+openList[| u-1].H)) {
	        var tmp;
	        tmp = openList[| i-1];
	        openList[| i-1] = openList[| u-1];
	        openList[| u-1] = tmp;
	        map.openListMap[openList[| i-1].xcoord + openList[| i-1].ycoord * map.width] = i-1;
	        map.openListMap[openList[| u-1].xcoord + openList[| u-1].ycoord * map.width] = u-1;
	        i = u;
	    } else {
	        break;
	    }
	}


}

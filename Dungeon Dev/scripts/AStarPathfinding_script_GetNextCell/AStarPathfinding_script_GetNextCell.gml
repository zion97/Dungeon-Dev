function AStarPathfinding_script_GetNextCell() {
	var bestF, cellIndex, nextCell;
	bestF = -1;
	cellIndex = -1;
	nextCell = openList[| 0];
	map.openclosedmap[nextCell.xcoord + nextCell.ycoord * map.width] = map.closedvalue;
	ds_list_add(closedList, nextCell);

	openList[| 0] = openList[| (ds_list_size(openList) - 1)];
	map.openListMap[openList[| 0].xcoord + openList[| 0].ycoord * map.width] = 0;
	ds_list_delete(openList, ds_list_size(openList) - 1);

	var i;
	i = 1;
	while (true) {
	    var u, v;
	    u = i * 2;
	    v = u + 1;
	    if (u > ds_list_size(openList)) {
	        break;
	    } else if (v > ds_list_size(openList)) {
	        if ((openList[| i-1].G+openList[| i-1].H) > (openList[| u-1].G+openList[| u-1].H)) {
	            var tmp;
	            tmp = openList[| i-1];
	            openList[| i-1] = openList[| u-1];
	            openList[| u-1] = tmp;
	            map.openListMap[openList[| i-1].xcoord + openList[| i-1].ycoord * map.width] = i-1;
	            map.openListMap[openList[| u-1].xcoord + openList[| u-1].ycoord * map.width] = u-1;
	        }
	        break;
	    } else {
	        if ((openList[| u-1].G+openList[| u-1].H) < (openList[| v-1].G+openList[| v-1].H)) {
	            if ((openList[| i-1].G+openList[| i-1].H) > (openList[| u-1].G+openList[| u-1].H)) {
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
	        } else {
	            if ((openList[| i-1].G+openList[| i-1].H) > (openList[| v-1].G+openList[| v-1].H)) {
	                var tmp;
	                tmp = openList[| i-1];
	                openList[| i-1] = openList[| v-1];
	                openList[| v-1] = tmp;
	                map.openListMap[openList[| i-1].xcoord + openList[| i-1].ycoord * map.width] = i-1;
	                map.openListMap[openList[| v-1].xcoord + openList[| v-1].ycoord * map.width] = v-1;
	                i = v;
	            } else {
	                break;
	            }
	        }
	    }
	}

	return nextCell;


}

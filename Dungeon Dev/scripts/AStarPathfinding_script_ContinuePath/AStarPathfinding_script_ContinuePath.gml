function AStarPathfinding_script_ContinuePath() {
	var searchdepth;
	searchdepth = 0;

	while (true) {
	    if (ds_list_empty(openList)) { 
	        // PATH FAILED
	        with (goalCell) {
	            instance_destroy();
	        }
	        return false;
	    }
	    var currentCell;
	    currentCell = AStarPathfinding_script_GetNextCell();
	    if (currentCell.cellid == goalCell.cellid) {
	        // PATH SUCCEEDED
	        // create new dummy cells to fill path list
	        goalCell.parent = currentCell.parent;
	        var getPath;
	        for (getPath = goalCell; getPath != 0; getPath = getPath.parent) {
	            ds_list_add(path, AStarPathfinding_script_CreateSearchCell(getPath.xcoord, getPath.ycoord, 0, 0));
	        }
	        if (ds_list_size(path) > 0) {
	            as_path_removefirst(id);
	        }
	        return true;
	    } else {
	        // KEEP LOOKING
	        if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord - 1, currentCell.ycoord)) {
	            AStarPathfinding_script_PathOpened(currentCell.xcoord - 1, currentCell.ycoord,  currentCell.G + as_map_getcell(map, currentCell.xcoord - 1, currentCell.ycoord), currentCell); // w
	        }
	        if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord + 1, currentCell.ycoord)) {
	            AStarPathfinding_script_PathOpened(currentCell.xcoord + 1, currentCell.ycoord,  currentCell.G + as_map_getcell(map, currentCell.xcoord + 1, currentCell.ycoord), currentCell); // e
	        }
	        if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord, currentCell.ycoord - 1)) {
	            AStarPathfinding_script_PathOpened(currentCell.xcoord, currentCell.ycoord - 1,  currentCell.G + as_map_getcell(map, currentCell.xcoord, currentCell.ycoord - 1), currentCell); // n
	        }
	        if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord, currentCell.ycoord + 1)) {
	            AStarPathfinding_script_PathOpened(currentCell.xcoord, currentCell.ycoord + 1,  currentCell.G + as_map_getcell(map, currentCell.xcoord, currentCell.ycoord + 1), currentCell); // s
	        }
	        if (diag == 1) {
	            if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord - 1, currentCell.ycoord - 1)) {
	                AStarPathfinding_script_PathOpened(currentCell.xcoord - 1, currentCell.ycoord - 1,  currentCell.G + 1.41421 * as_map_getcell(map, currentCell.xcoord - 1, currentCell.ycoord - 1), currentCell); // nw
	            }
	            if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord + 1, currentCell.ycoord - 1)) {
	                AStarPathfinding_script_PathOpened(currentCell.xcoord + 1, currentCell.ycoord - 1,  currentCell.G + 1.41421 * as_map_getcell(map, currentCell.xcoord + 1, currentCell.ycoord - 1), currentCell); // ne
	            }
	            if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord - 1, currentCell.ycoord + 1)) {
	                AStarPathfinding_script_PathOpened(currentCell.xcoord - 1, currentCell.ycoord + 1,  currentCell.G + 1.41421 * as_map_getcell(map, currentCell.xcoord - 1, currentCell.ycoord + 1), currentCell); // sw
	            }
	            if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord + 1, currentCell.ycoord + 1)) {
	                AStarPathfinding_script_PathOpened(currentCell.xcoord + 1, currentCell.ycoord + 1,  currentCell.G + 1.41421 * as_map_getcell(map, currentCell.xcoord + 1, currentCell.ycoord + 1), currentCell); // se
	            }
	        } else if (diag == 2) {
	            if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord - 1, currentCell.ycoord - 1) && AStarPathfinding_script_CheckNoCollision(currentCell.xcoord - 1, currentCell.ycoord) && AStarPathfinding_script_CheckNoCollision(currentCell.xcoord, currentCell.ycoord - 1)) {
	                AStarPathfinding_script_PathOpened(currentCell.xcoord - 1, currentCell.ycoord - 1,  currentCell.G + 1.41421 * as_map_getcell(map, currentCell.xcoord - 1, currentCell.ycoord - 1), currentCell); // nw
	            }
	            if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord + 1, currentCell.ycoord - 1) && AStarPathfinding_script_CheckNoCollision(currentCell.xcoord + 1, currentCell.ycoord) && AStarPathfinding_script_CheckNoCollision(currentCell.xcoord, currentCell.ycoord - 1)) {
	                AStarPathfinding_script_PathOpened(currentCell.xcoord + 1, currentCell.ycoord - 1,  currentCell.G + 1.41421 * as_map_getcell(map, currentCell.xcoord + 1, currentCell.ycoord - 1), currentCell); // ne
	            }
	            if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord - 1, currentCell.ycoord + 1) && AStarPathfinding_script_CheckNoCollision(currentCell.xcoord - 1, currentCell.ycoord) && AStarPathfinding_script_CheckNoCollision(currentCell.xcoord, currentCell.ycoord + 1)) {
	                AStarPathfinding_script_PathOpened(currentCell.xcoord - 1, currentCell.ycoord + 1,  currentCell.G + 1.41421 * as_map_getcell(map, currentCell.xcoord - 1, currentCell.ycoord + 1), currentCell); // sw
	            }
	            if (AStarPathfinding_script_CheckNoCollision(currentCell.xcoord + 1, currentCell.ycoord + 1) && AStarPathfinding_script_CheckNoCollision(currentCell.xcoord + 1, currentCell.ycoord) && AStarPathfinding_script_CheckNoCollision(currentCell.xcoord, currentCell.ycoord + 1)) {
	                AStarPathfinding_script_PathOpened(currentCell.xcoord + 1, currentCell.ycoord + 1,  currentCell.G + 1.41421 * as_map_getcell(map, currentCell.xcoord + 1, currentCell.ycoord + 1), currentCell); // se
	            }
	        }
	    }
    
	    if (maxdepth >= 0) { 
	        searchdepth += 1;
	        if (searchdepth >= maxdepth) {
	            // PATH FAILED
	            with (goalCell) {
	                instance_destroy();
	            }
	            return false;
	        }
	    }
	}


}

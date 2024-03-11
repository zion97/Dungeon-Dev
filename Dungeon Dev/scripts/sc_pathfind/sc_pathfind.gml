// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pathfind_character()
{
	ind_path	= sc_pathfind(x, y, ind_path_tx, ind_path_ty);
	alarm[0]	= 10;
}

function sc_pathfind(_start_x, _start_y, _target_x, _target_y)
{
	var _path;
	
	with (obj_control_parent)
	{
		var _x1 = clamp(_start_x div grid, 0, array_length(map)-1)
		var _y1 = clamp(_start_y div grid, 0, array_length(map[@ 0])-1)
		var _x2 = clamp(_target_x div grid, 0, array_length(map)-1)
		var _y2 = clamp(_target_y div grid, 0, array_length(map[@ 0])-1)
		
		set_start(_x1, _y1);
		set_destiny(_x2, _y2);

		pathfinding();
		
		_path = arr_path;
	}
	return _path;
}
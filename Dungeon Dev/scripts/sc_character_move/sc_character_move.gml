// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_move()
{
	if (ind_ad == noone)
	{
		sc_character_ad();
	}
	var _dist	= point_distance(x, y, ind_path_tx, ind_path_ty);
	
	if (_dist > 16)
	{
		var _ind = array_length(ind_path)
		if (_ind > 1)
		{
			var _tx	= ind_path[@ _ind-2].x;
			var _ty	= ind_path[@ _ind-2].y;
			
			move_towards_point(_tx*grid+grid/2, _ty*grid+grid/2, ind_spd);
			
			if (int64(x/grid) == _tx && int64(y/grid) == _ty)
			{
				array_delete(ind_path, _ind-1, 1);
			}
		}
		else
		{
			speed = 0;
		}
	}
	else if (_dist > 4)
	{
		move_towards_point(ind_path_tx, ind_path_ty, ind_spd);
	}
	else
	{
		speed = 0;
	}
}
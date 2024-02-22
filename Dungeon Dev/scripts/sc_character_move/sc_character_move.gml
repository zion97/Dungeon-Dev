// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_move()
{
	var _dist	= point_distance(x, y, ind_path_tx, ind_path_ty);
	
	if (_dist > 32)
	{
		//sc_pathfind();
		var _ind = array_length(ind_path);
		if (_ind > 1)
		{
			sprite_index	= ind_spr_walk;
			var _tx	= ind_path[@ _ind-2].x;
			var _ty	= ind_path[@ _ind-2].y;
			
			move_towards_point(_tx*grid+grid/2, _ty*grid+grid/2, ind_spd);
			
			if (int64(x/grid) == _tx && int64(y/grid) == _ty)
			{
				//sc_pathfind();
				array_delete(ind_path, -1, 1);
			}
		}
		else
		{
			speed = 0;
			sprite_index	= ind_spr_stand;
		}
	}
	else if (_dist > 4)
	{
		move_towards_point(ind_path_tx, ind_path_ty, ind_spd);
		sprite_index	= ind_spr_walk;
	}
	else
	{
		speed = 0;
		sprite_index	= ind_spr_stand;
	}
}
/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

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
else if (_dist > 8)
{
	move_towards_point(ind_path_tx, ind_path_ty, ind_spd);
}
else
{
	speed = 0;
}

sc_physics_step();

// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_col_char(_inst)
{
	with (_inst)
	{
		if (ind_death)	return;
		
		var _dist	= 6;
		var _ind_x	= x - other.x;
		var _ind_y	= y - other.y;
		
		var _ind_p	= 48;
		//if (abs(speed) < 0.2)	_ind_p = _ind_p*2;
		if (abs(_ind_x) < _dist)
		{
			if (_ind_x > 0)
			{
				other.ph_col_x	-= power(_dist - _ind_x, 2)/_ind_p;
			}
			else if (_ind_x < 0)
			{
				other.ph_col_x	+= power(_dist + _ind_x, 2)/_ind_p;
			}
			_sca			= false;
		}
		
		if (abs(_ind_y) < _dist)
		{
			if (_ind_y > 0)
			{
				other.ph_col_y	-= power(_dist - _ind_y, 2)/_ind_p;
			}
			else if (_ind_y < 0)
			{
				other.ph_col_y	+= power(_dist + _ind_y, 2)/_ind_p;
			}
			_sca			= false;
		}
		
	}
}
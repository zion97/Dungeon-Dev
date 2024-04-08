// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_ad()
{
	with (ind_ad)
	{
		if (ind_hp > 0) return true;
	}
	var _dist		= 99999;
	var _target		= noone;
	var _ad_dist	= ind_ad_dist;
	var _ad_mod		= ind_ad_mod;
	var	_ind_ally	= ind_ally;
	
	with (obj_pa_character)
	{
		var _ind_active	= false;
		if (_ad_mod == 0)
		{
			if (ind_ally != _ind_ally)	{ _ind_active	= true; }
		}
		else if (_ad_mod == 1)
		{
			if (ind_ally == _ind_ally)	{ _ind_active	= true; }
		}
		
		if (_ind_active && !ind_death && id != other.id)	
		{
			var _i = point_distance(x, y, other.x, other.y);
			if (_dist > _i && _i < _ad_dist)
			{
				_dist	= _i;
				_target	= id;
			}
		}
	}
	
	if (_dist != 99999)
	{
		ind_ad		= _target;
		sc_pathfind_character();
		return true;
	}
	return false;
}


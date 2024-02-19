// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_ad()
{
	var _dist	= 99999;
	var _target	= noone;
	with (obj_pa_character)
	{
		if (ind_ally == other.ind_ally)	break;
		
		var _i = point_distance(x, y, other.x, other.y);
		if (_dist > _i)
		{
			_dist	= _i;
			_target	= id;
		}
	}
	if (_dist != 99999)
	{
		ind_ad	= _target;
		return true;
	}
	return false;
}


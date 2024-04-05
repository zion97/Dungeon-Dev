/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (!ind_active)
{
	ind_inst	= collision_circle(x, y, 32, obj_pa_hero, true, true);
	if (ind_inst != noone)
	{
		ind_active	= true;
	}
}
else
{
	var _dist	= 0;
	var _x		= x;
	var _y		= y;
	var _x2		= 0;
	var _y2		= 0;
	with (ind_inst)
	{
		_x2		= x;
		_y2		= y;
		_dist	= point_distance(_x, _y, _x2, _y2);
	}
	ind_spd		+= 0.2;
	if (_dist > ind_spd)
	{
		move_towards_point(_x2, _y2, ind_spd);
	}
	else
	{
		ind_get_sc();
		instance_destroy();
	}
}
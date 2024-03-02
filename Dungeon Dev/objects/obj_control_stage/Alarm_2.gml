/// @description 클리어 조건 확인
// 이 에디터에 코드를 작성할 수 있습니다
var _clear	= true;
with (obj_pa_hero)
{
	if (ind_goal < ind_goal_max)
	{
		_clear	= false;
	}
}
with (obj_pa_mob)
{
	if (ind_hp > 0)
	{
		_clear	= false;
	}
}

if (_clear)
{
	ind_clear	= true;
	alarm[1]	= 60;
}
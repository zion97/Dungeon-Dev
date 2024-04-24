// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_get_theme_num(_stage)
{
	if		(_stage < 30)
	{
		return 0;
	}
	else if	(_stage < 60)
	{
		return 1;
	}
	return 0;
}

function sc_set_theme()
{
	ind_func	= array_create(3);

	ind_func[0]	= function() { room_goto(rm_theme01); }
	ind_func[1]	= function() { room_goto(rm_theme02); }
	ind_func[2]	= function() { room_goto(rm_stage01_01cs); }
}

function sc_goto_theme(_rm_num)
{
	ind_func[_rm_num]();
}
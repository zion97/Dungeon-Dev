// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_get_theme_num(_stage)
{
	if		(_stage < 20)
	{
		return 0;
	}
	else if	(_stage < 40)
	{
		return 1;
	}
}
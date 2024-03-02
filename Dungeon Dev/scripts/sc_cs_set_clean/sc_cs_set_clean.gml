// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_set_clean(_time = 120, _nxt = ind_process + 1, _end_cs = false)
{
	if (_end_cs)
	{
		alarm[1] = 1;
		return;
	}
	
	ind_que_nxt[0]	= _nxt;
	ind_que_sel		= 0;
	
	alarm[2]	= _time;
	ind_state	= 0;
}
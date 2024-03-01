// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_stage01_01()
{
	switch(ind_process)
	{
	case 0:
		sc_cs_set_dia(1, spr_pic_maw);
		ind_state	= 1;
		break;
		
	case 1:
		break;
	}
}
// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_stage02_09()
{
	switch(ind_process)
	{
	case 0:
		sc_cs_set_clean(60);
		break;
		
	case 1:
		sc_cs_set_dia(1,4,spr_pic_maw);
		break;
		
	case 4:
		sc_cs_set_que(4, 2, [5, 9],,spr_pic_maw);
		break;
		
	case 5:
		sc_cs_set_dia(8,,spr_pic_maw_laugh);
		break;
		
	case 6:
		sc_cs_set_dia(8,13,spr_pic_maw_laugh);
		break;
		
	case 9:
		sc_cs_set_dia(12,,spr_pic_maw_ember);
		break;
		
	case 10:
		sc_cs_set_dia(13,13,spr_pic_maw);
		break;
		
	case 13:
		sc_cs_set_dia(16,,spr_pic_maw);
		break;
		
	case 14:
		sc_cs_set_dia(17,,spr_pic_maw);
		break;
		
	case 15:
		sc_cs_set_dia(18,,spr_pic_maw_laugh);
		break;
		
	case 16:
		sc_cs_set_clean(60);
		break;
		
	case 17:
		sc_cs_set_clean(,,true);
		break;
	}
}
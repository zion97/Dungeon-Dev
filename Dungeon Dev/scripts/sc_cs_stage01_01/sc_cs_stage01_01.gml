// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_stage01_01()
{
	switch(ind_process)
	{
	case 0:
		sc_cs_set_dia(1);
		break;
		
	case 1:
		sc_cs_set_dia(2);
		break;
		
	case 2:
		sc_cs_set_dia(3);
		break;
		
	case 3:
		sc_cs_set_dia(4);
		break;
		
	case 4:
		sc_cs_set_dia(5);
		break;
		
	case 5:
		sc_cs_set_que(6, 2, [6, 10]);
		break;
		
	case 6:
		sc_cs_set_dia(9);
		break;
		
	case 7:
		sc_cs_set_dia(10,,spr_pic_maw_laugh);
		SE_Play(s_cs_door_open);
		break;
		
	case 8:
		sc_cs_set_dia(11,,,spr_pic_maw_laugh);
		break;
		
	case 9:
		sc_cs_set_dia(12,15, spr_pic_maw);
		break;
		
	case 10:
		sc_cs_set_dia(14);
		break;
		
	case 11:
		sc_cs_set_dia(15,, spr_pic_maw_ember);
		SE_Play(s_cs_door_open);
		break;
		
	case 12:
		sc_cs_set_dia(16,,,spr_pic_maw_ember);
		break;
		
	case 13:
		sc_cs_set_dia(17,, spr_pic_maw_ember);
		break;
		
	case 14:
		sc_cs_set_dia(18,, spr_pic_maw);
		break;
		
	case 15:
		sc_cs_set_dia(19,,,spr_pic_maw);
		break;
		
	case 16:
		sc_cs_set_clean(60);
		break;
		
	case 17:
		sc_cs_set_clean(,,true);
		break;
	}
}
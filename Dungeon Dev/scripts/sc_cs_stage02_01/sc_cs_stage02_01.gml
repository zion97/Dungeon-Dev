// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_stage02_01()
{
	switch(ind_process)
	{
	case 0:
		sc_cs_set_clean(120);
		sc_cs_create_sb(272, 128, 2);
		break;
		
	case 1:
		sc_cs_set_dia(1);
		sc_cs_create_talk(272, 128);
		break;
		
	case 2:
		sc_cs_set_dia(2);
		sc_cs_create_talk(176, 128);
		break;
		
	case 3:
		sc_cs_set_dia(3);
		sc_cs_create_talk(240, 128);
		break;
		
	case 4:
		sc_cs_set_clean(60);
		break;
		
	case 5:
		sc_cs_set_dia(6,,spr_pic_maw);
		break;
		
	case 6:
		sc_cs_set_dia(7,,spr_pic_maw);
		break;
		
	case 7:
		sc_cs_set_que(10, 2, [8, 12],,spr_pic_maw)
		break;
		
	case 8:
		sc_cs_set_dia(14,,spr_pic_maw);
		break;
		
	case 9:
		sc_cs_set_dia(15,20, spr_pic_maw_laugh);
		break;
		
	case 12:
		sc_cs_set_dia(18,, spr_pic_maw_ember);
		break;
		
	case 13:
		sc_cs_set_dia(19,,, spr_pic_maw_ember);
		break;
		
	case 14:
		sc_cs_set_dia(20,, spr_pic_maw_ember);
		break;
		
	case 15:
		sc_cs_set_dia(21,,, spr_pic_maw_ember);
		break;
		
	case 16:
		sc_cs_set_dia(22,, spr_pic_maw_angry);
		break;
		
	case 17:
		sc_cs_set_dia(23,20,, spr_pic_maw_angry);
		break;
		
	case 20:
		sc_cs_set_dia(26,, spr_pic_maw);
		break;
		
	case 21:
		sc_cs_set_dia(27,, spr_pic_maw);
		break;
		
	case 22:
		sc_cs_set_dia(28,, spr_pic_maw);
		break;
		
	case 23:
		sc_cs_set_que(31, 2, [24, 27],,spr_pic_maw)
		break;
		
	case 24:
		sc_cs_set_dia(35,31, spr_pic_maw);
		break;
		
	case 27:
		sc_cs_set_dia(38,, spr_pic_maw_ember);
		break;
		
	case 28:
		sc_cs_set_dia(39,31, spr_pic_maw_ember);
		break;
		
	case 31:
		sc_cs_set_dia(42,, spr_pic_maw);
		break;
		
	case 32:
		sc_cs_set_dia(43,, spr_pic_maw_laugh);
		break;
		
	case 33:
		sc_cs_set_clean(60);
		break;
		
	case 34:
		sc_cs_set_clean(,,true);
		break;
	}
}
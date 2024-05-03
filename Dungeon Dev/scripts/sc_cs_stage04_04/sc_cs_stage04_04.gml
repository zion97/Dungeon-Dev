// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_stage04_04()
{
	switch(ind_process)
	{
	case 0:
		sc_cs_set_clean(120);
		with (obj_cs_h_shield_sick)	{ sc_cs_create_sb(x, y, 0); }
		break;
		
	case 1:
		sc_cs_set_dia(1);
		with (obj_cs_h_shield_sick)	{ sc_cs_create_talk(x, y); }
		break;
		
	case 2:
		sc_cs_set_clean(120);
		with (obj_cs_h_sword_sick)	{ sc_cs_create_sb(x, y, 2); }
		break;
		
	case 3:
		sc_cs_set_dia(2);
		with (obj_cs_h_sword_sick)	{ sc_cs_create_talk(x, y); }
		break;
		
	case 4:
		sc_cs_set_clean(60);
		break;
		
	case 5:
		sc_cs_set_dia(3,,spr_pic_maw_angry);
		break;
		
	case 6:
		sc_cs_set_dia(4,,spr_pic_maw_angry);
		break;
		
	case 7:
		sc_cs_set_dia(5,,,spr_pic_maw_angry);
		break;
		
	case 8:
		sc_cs_set_que(7,2,[9, 12],,spr_pic_maw_angry);
		break;
		
	case 9:
		sc_cs_set_dia(10, 16, spr_pic_maw_laugh);
		break;
		
	case 12:
		sc_cs_set_dia(13,, spr_pic_maw_ember);
		break;
		
	case 13:
		sc_cs_set_dia(14, 16,, spr_pic_maw_ember);
		break;
		
	case 16:
		sc_cs_set_dia(17,, spr_pic_maw_ember);
		break;
		
	case 17:
		sc_cs_set_dia(18,, spr_pic_maw);
		break;
		
	case 18:
		sc_cs_set_dia(19,, spr_pic_maw_laugh);
		break;
		
	case 19:
		sc_cs_set_dia(20,, spr_pic_maw);
		break;
		
	case 20:
		sc_cs_set_dia(21,, spr_pic_maw);
		break;
		
	case 21:
		sc_cs_set_dia(22,, spr_pic_maw);
		break;
		
	case 22:
		sc_cs_set_clean(60);
		break;
		
	case 23:
		sc_cs_set_clean(,,true);
		break;
	}
}
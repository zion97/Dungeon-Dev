// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_stage02_05()
{
	switch(ind_process)
	{
	case 0:
		sc_cs_set_clean(120);
		sc_cs_create_sb(208, 128, 1);
		break;
		
	case 1:
		sc_cs_set_dia(1);
		sc_cs_create_talk(208, 128);
		break;
		
	case 2:
		sc_cs_set_clean(120);
		sc_cs_create_sb(160, 128, 0);
		break;
		
	case 3:
		sc_cs_set_dia(2);
		sc_cs_create_talk(160, 128);
		break;
		
	case 4:
		sc_cs_set_dia(3);
		sc_cs_create_talk(256, 128);
		break;
		
	case 5:
		sc_cs_set_clean(60);
		break;
		
	case 6:
		sc_cs_set_dia(4,,spr_pic_maw_angry);
		break;
		
	case 7:
		sc_cs_set_dia(5,,spr_pic_maw);
		break;
		
	case 8:
		sc_cs_set_dia(6,,,spr_pic_maw);
		break;
		
	case 9:
		sc_cs_set_dia(7,, spr_pic_maw);
		break;
		
	case 10:
		sc_cs_set_dia(8,, spr_pic_maw_laugh);
		break;
		
	case 11:
		sc_cs_set_clean(60);
		break;
		
	case 12:
		sc_cs_set_clean(,,true);
		break;
	}
}
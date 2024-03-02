// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_stage01_01_2()
{
	switch(ind_process)
	{
	case 0:
		sc_cs_set_dia(1,,spr_pic_maw_laugh);
		break;
		
	case 1:
		sc_cs_set_dia(2,,,spr_pic_maw_laugh);
		break;
		
	case 2:
		sc_cs_set_dia(3,,spr_pic_maw);
		break;
		
	case 3:
		sc_cs_set_dia(4,,spr_pic_maw);
		break;
		
	case 4:
		uc_shake(3, 0.1);
		SE_Play(s_cs_break);
		sc_cs_set_clean(60);
		break;
		
	case 5:
		with (obj_cs_h_sword)	{ hspeed = 2;	sprite_index = spr_h_sword_walk; }
		sc_cs_set_clean(120);
		break;
		
	case 6:
		with (obj_cs_h_sword)	{ hspeed = 0;	sprite_index = spr_h_sword_stand; }
		sc_cs_set_clean(120);
		break;
		
	case 7:
		sc_cs_set_dia(7);
		break;
		
	case 8:
		sc_cs_set_dia(8,,spr_pic_maw_laugh);
		break;
		
	case 9:
		sc_cs_set_dia(9,, spr_pic_maw);
		break;
		
	case 10:
		sc_cs_set_dia(10,,,spr_pic_maw);
		break;
		
	case 11:
		sc_cs_set_dia(11,, spr_pic_maw);
		break;
		
	case 12:
		sc_cs_set_dia(12,,,spr_pic_maw);
		break;
		
	case 13:
		sc_cs_set_dia(13,, spr_pic_maw_laugh);
		break;
		
	case 14:
		sc_cs_set_dia(14,, spr_pic_maw);
		break;
		
	case 15:
		sc_cs_set_dia(15,,, spr_pic_maw);
		break;
		
	case 16:
		sc_cs_set_que(16,2, [17, 19],, spr_pic_maw);
		break;
		
	case 17:
		sc_cs_set_dia(19,, spr_pic_maw_laugh);
		break;
		
	case 18:
		sc_cs_set_dia(20, 25, spr_pic_maw);
		break;
		
	case 19:
		uc_shake(2, 0.1);
		sc_cs_set_dia(22,, spr_pic_maw_angry);
		break;

	case 20:
		uc_shake(2, 0.1);
		sc_cs_set_dia(23,, spr_pic_maw_angry);
		break;
		
	case 21:
		sc_cs_set_dia(24,,, spr_pic_maw_angry);
		break;
		
	case 22:
		sc_cs_set_dia(25, 25, spr_pic_maw);
		break;
		
	case 25:
		sc_cs_set_dia(28,, spr_pic_maw);
		break;
		
	case 26:
		sc_cs_set_dia(29,, spr_pic_maw);
		break;
		
	case 27:
		sc_cs_set_dia(30,, spr_pic_maw);
		break;
		
	case 28:
		sc_cs_set_dia(31,, spr_pic_maw);
		break;
		
	case 29:
		sc_cs_set_dia(32,, spr_pic_maw);
		break;
		
	case 30:
		sc_cs_set_dia(33,, spr_pic_maw);
		break;
		
	case 31:
		sc_cs_set_dia(34,, spr_pic_maw);
		break;
		
	case 32:
		sc_cs_set_dia(35,, spr_pic_maw_laugh);
		break;
		
	case 50:
		alarm[1] = 1;
		break;
	}
}
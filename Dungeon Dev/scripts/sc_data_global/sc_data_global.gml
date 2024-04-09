// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_data_global()
{
	global.steam		= true;
	global.save_file	= "dd_save";
	
	global.roomBuffer	= -1;
	global.screenBuffer = -1;
	
	global.lan			= 0;
	global.vol			= 3;
	global.vol_bgm		= 3;
	
	global.game_spd		= 0;
	global.is_fade		= true;
	
	{	//폰트
		global.font_name		= array_create(5);
		global.font_name[0]		= font_add("font\\font_kr.otf", 32, 0, 0, 32, 55203);
		global.font_name[1]		= font_add("font\\font_kr.otf", 32, 0, 0, 32, 128);
		
		global.font_text		= array_create(5);
		global.font_text[0]		= font_add("font\\font_kr.otf", 24, 0, 0, 32, 55203);
		global.font_text[1]		= font_add("font\\font_kr.otf", 24, 0, 0, 32, 128);
		
		global.font_num			= font_add("font\\font_kr.otf", 16, 0, 0, 32, 128);
	}
	
	{	//몬스터 생성기
		global.mob_struct		= array_create(10);
		global.mob_struct[0]	= new DepStruct(0, obj_dep_goblin, sc_info_mob_goblin); 
		global.mob_struct[1]	= new DepStruct(0, obj_dep_orc_shield, sc_info_mob_orc_shield); 
		global.mob_struct[2]	= new DepStruct(0, obj_dep_orc_axe, sc_info_mob_orc_axe); 
		global.mob_struct[3]	= new DepStruct(0, obj_dep_orc_range, sc_info_mob_orc_range); 
	}
	
	{	//아이템 생성기
		global.item_struct		= array_create(10);
		global.item_struct[0]	= new DepStruct(0, obj_dep_item_heal, sc_info_mob_goblin); 
	}
	
	{	//룸
		global.rm_index			= 0;
		
		global.rm_stage			= array_create(50);
		global.rm_stage[0]		= rm_stage01_01cs;
		global.rm_stage[1]		= rm_stage01_02cs;
		global.rm_stage[2]		= rm_stage01_03cs;
		global.rm_stage[3]		= rm_stage01_04;
		global.rm_stage[4]		= rm_stage01_05cs;
		global.rm_stage[5]		= rm_stage01_06;
		global.rm_stage[6]		= rm_stage01_07
		global.rm_stage[7]		= rm_stage01_08;
		global.rm_stage[8]		= rm_stage01_09;
		global.rm_stage[9]		= rm_stage01_10;
		global.rm_stage[10]		= rm_stage01_11;
		global.rm_stage[11]		= rm_stage01_11;
		global.rm_stage[12]		= rm_stage01_11;
		global.rm_stage[13]		= rm_stage01_11;
		global.rm_stage[14]		= rm_stage01_11;
		global.rm_stage[15]		= rm_stage01_11;
	}
}
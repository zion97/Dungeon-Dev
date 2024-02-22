// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_create()
{
	ind_path_tx		= x;
	ind_path_ty		= y;
	ind_path_gx		= 0;
	ind_path_gy		= 0;
	ind_path		= [];
	ind_delay		= 0;
	sc_character_reset_delay();
	
	ind_state		= 0;
	ind_delay_max	= 150;
	ind_ad			= noone;
	
	ind_ally		= 1;
	ind_spd			= 3;
	grid = 16;
	
	ind_spr_stand	= spr_dump;
	ind_spr_walk	= spr_dump;
}
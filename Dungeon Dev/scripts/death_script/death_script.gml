// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_death_4f()
{
	sprite_index	= ind_spr_death;
	
	if (ind_process < 8)		{ image_index	= 0; }
	else if (ind_process < 16)	{ image_index	= 1; }
	else if (ind_process < 24)	{ image_index	= 2; }
	else if (ind_process < 32)	{ image_index	= 3; }

	if (ind_process < 40) ind_process++;
}
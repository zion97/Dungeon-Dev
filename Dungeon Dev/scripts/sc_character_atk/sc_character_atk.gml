// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_atk(_inst)
{
	var _dmg	= ind_atk_dmg;
	with(_inst)
	{
		ind_hp		-= _dmg;
		image_blend	= c_red;
		alarm[1]	= 6;
	}
	if (ind_class == 0)	ind_goal += _dmg;
	SE_Play(ind_s_atk);
}
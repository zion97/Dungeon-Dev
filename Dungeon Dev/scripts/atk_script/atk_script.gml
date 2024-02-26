// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_set_dir()
{
	if (ind_ad.x > x)	{ image_xscale = 1; }
	else				{ image_xscale = -1; }
}

function sc_atk_melee_5f_3()
{
	sprite_index	= ind_spr_atk;
	
	if (ind_process < 6)		{ image_index	= 0; }
	else if (ind_process < 12)	{ image_index	= 1; }
	else if (ind_process < 18)	
	{ 
		image_index	= 2; 
		if (ind_process == 12)
		{
			sc_character_atk(ind_ad);
		}
	}
	else if (ind_process < 24)	{ image_index	= 3; }
	else if (ind_process < 30)	{ image_index	= 4; }
	else
	{
		ind_state	= 0;
		ind_process = 0;
		return;
	}
	
	ind_process++;
}

function sc_atk_melee_5f_4()
{
	sprite_index	= ind_spr_atk;
	
	if (ind_process < 6)		{ image_index	= 0; }
	else if (ind_process < 12)	{ image_index	= 1; }
	else if (ind_process < 18)	{ image_index	= 2; }
	else if (ind_process < 24)	
	{ 
		image_index	= 3; 
		if (ind_process == 18)
		{
			sc_character_atk(ind_ad);
		}
	}
	else if (ind_process < 30)	{ image_index	= 4; }
	else
	{
		ind_state	= 0;
		ind_process = 0;
		return;
	}
	
	ind_process++;
}
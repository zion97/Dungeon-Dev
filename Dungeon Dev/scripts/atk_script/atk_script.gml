// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_set_dir()
{
	if (ind_ad.x > x)	{ image_xscale = 1; }
	else				{ image_xscale = -1; }
}

function sc_atk_delay_set()
{
	ind_state	= 0;
	var _delay	= 0;
	with (ind_ad)
	{
		if (ind_hp <= 0)	{ _delay = -10; }
	}
	ind_process	= _delay;
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
		sc_atk_delay_set();
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
		sc_atk_delay_set();
		return;
	}
	
	ind_process++;
}

function sc_atk_range_5f_3()
{
	sprite_index	= ind_spr_atk;
	
	if (ind_process < 6)		{ image_index	= 0; }
	else if (ind_process < 12)	{ image_index	= 1; }
	else if (ind_process < 18)	
	{ 
		image_index	= 2; 
		if (ind_process == 12)
		{
			sc_character_atk_range(ind_ad, ind_range_spr, ind_range_s, ind_range_spd);
		}
	}
	else if (ind_process < 24)	{ image_index	= 3; }
	else if (ind_process < 30)	{ image_index	= 4; }
	else
	{
		sc_atk_delay_set();
		return;
	}
	
	ind_process++;
}

function sc_atk_range_5f_4()
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
			sc_character_atk_range(ind_ad, ind_range_spr, ind_range_s, ind_range_spd);
		}
	}
	else if (ind_process < 30)	{ image_index	= 4; }
	else
	{
		sc_atk_delay_set();
		return;
	}
	
	ind_process++;
}

function sc_atk_heal_6f_4()
{
	if (ind_process == 0)
	{
		var _i		= false;
		var _ally	= ind_ally;
		with (obj_pa_character)
		{
			if (ind_ally == _ally && ind_hp < ind_hp_max && !ind_death)	{ _i = true; }
		}
		if (!_i)
		{
			ind_ad	= noone;
			sc_atk_delay_set();
			return;
		}
	}
		
	sprite_index	= ind_spr_atk;
	
	if (ind_process < 6)		{ image_index	= 0; }
	else if (ind_process < 12)	{ image_index	= 1; }
	else if (ind_process < 16)	{ image_index	= 2; }
	else if (ind_process < 20)	
	{ 
		image_index	= 3; 
		if (ind_process == 16)
		{
			sc_character_heal();
		}
	}
	else if (ind_process < 24)	{ image_index	= 4; }
	else if (ind_process < 30)	{ image_index	= 5; }
	else
	{
		ind_ad	= noone;
		sc_atk_delay_set();
		return;
	}
	
	ind_process++;
}
// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_atk(_inst)
{
	with (obj_control_stage)
	{
		alarm[2]	= 1;
	}
	
	SE_Play(ind_s_atk);
	
	var _dmg	= ind_atk_dmg;
	with(_inst)
	{
		if (ind_hp <= 0) return;
		ind_hp		-= _dmg;
		image_blend	= c_red;
		alarm[1]	= 6;
		if (ind_class == 1)	ind_goal += _dmg;
	}
	
	if (ind_class == 0)	ind_goal += _dmg;
	
	
}

function sc_character_atk_range(_inst, _spr, _sound, _spd = 5)
{
	var _dmg	= ind_atk_dmg;
	var	_id		= id;
	with (instance_create_layer(x, y, "Instances", obj_pa_range_atk))
	{
		ind_parent		= _id;
		ind_target		= _inst;
		sprite_index	= _spr
		ind_dmg			= _dmg;
		ind_s_atk		= _sound;
		ind_spd			= _spd;
	}
	
	SE_Play(ind_s_atk);
}

function sc_atk_range()
{
	with (obj_control_stage)
	{
		alarm[2]	= 1;
	}
	
	SE_Play(ind_s_atk);
	
	var _dmg	= ind_dmg;
	with(ind_target)
	{
		if (ind_hp <= 0) return;
		ind_hp		-= _dmg;
		image_blend	= c_red;
		alarm[1]	= 6;
		if (ind_class == 1)	ind_goal += _dmg;
	}
	with (ind_parent)
	{
		if (ind_class == 0)	ind_goal += _dmg;
	}
	
	
}
// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_heal()
{
	var _heal	= ind_atk_dmg;
	var _goal	= 0;
	var _ally	= ind_ally;
	
	with (obj_pa_character)
	{
		if (!ind_death && ind_hp < ind_hp_max && _ally == ind_ally)
		{
			var _i		= ind_hp_max - ind_hp;
			if (_i > _heal)	_i = _heal;
			ind_hp	+=	_i;
			if (ind_hp > ind_hp_max)	ind_hp = ind_hp_max;
			
			var _part	= part_system_create(p_ef_heal);
			part_system_position(_part, x, y);
			_goal	+= _i;
		}
	}
	if (ind_class == 2)	ind_goal	+= _goal;
	
	with (obj_control_stage)
	{
		alarm[2]	= 1;
	}
}
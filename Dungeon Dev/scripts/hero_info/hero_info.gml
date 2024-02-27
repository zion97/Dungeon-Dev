// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_info_hero_shield()
{
	ind_atk_sc		= sc_atk_melee_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 10;
	ind_hp_max		= 125;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_shield_stand;
	ind_spr_walk	= spr_h_shield_walk;
	ind_spr_atk		= spr_h_shield_atk;
	ind_spr_death	= spr_h_shield_death;
}

function sc_info_hero_sword()
{
	ind_atk_sc		= sc_atk_melee_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 25;
	ind_hp_max		= 50;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_sword_stand;
	ind_spr_walk	= spr_h_sword_walk;
	ind_spr_atk		= spr_h_sword_atk;
	ind_spr_death	= spr_h_sword_death;
}
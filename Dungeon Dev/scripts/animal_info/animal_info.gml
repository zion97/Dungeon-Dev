// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_info_a_deer()
{
	ind_atk_sc		= sc_atk_melee_5f_5;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 5;
	ind_hp_max		= 75;
	ind_hp			= ind_hp_max
	ind_ally		= 3;
	ind_spd			= 1;
	ind_cost		= 5;
	ind_ad_dist		= 120;
	ind_dep_any		= false;
	
	ind_spr_stand	= spr_a_deer_stand;
	ind_spr_walk	= spr_a_deer_walk;
	ind_spr_atk		= spr_a_deer_atk;
	ind_spr_death	= spr_a_deer_death;
	
	ind_s_atk		= s_swing01;
	ind_s_death		= s_dump;
}

function sc_info_a_wolf()
{
	ind_atk_sc		= sc_atk_melee_5f_5;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 5;
	ind_hp_max		= 75;
	ind_hp			= ind_hp_max
	ind_ally		= 3;
	ind_spd			= 1;
	ind_cost		= 5;
	ind_ad_dist		= 120;
	ind_dep_any		= false;
	
	ind_spr_stand	= spr_a_wolf_stand;
	ind_spr_walk	= spr_a_wolf_walk;
	ind_spr_atk		= spr_a_wolf_atk;
	ind_spr_death	= spr_a_wolf_death;
	
	ind_s_atk		= s_wolf;
	ind_s_death		= s_dump;
}
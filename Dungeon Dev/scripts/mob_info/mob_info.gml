// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_info_mob_goblin()
{
	ind_atk_sc		= sc_atk_melee_5f_4;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 5;
	ind_hp_max		= 75;
	ind_hp			= ind_hp_max
	ind_ally		= 2;
	ind_spd			= 1;
	ind_cost		= 5;
	ind_ad_dist		= 120;
	ind_dep_any		= false;
	
	ind_spr_stand	= spr_mob_goblin_stand;
	ind_spr_walk	= spr_mob_goblin_walk;
	ind_spr_atk		= spr_mob_goblin_atk;
	ind_spr_death	= spr_mob_goblin_death;
	
	ind_s_atk		= s_sword01;
	ind_s_death		= s_dump;
}

function sc_info_mob_orc_shield()
{
	ind_atk_sc		= sc_atk_melee_5f_4;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 5;
	ind_hp_max		= 150;
	ind_hp			= ind_hp_max
	ind_ally		= 2;
	ind_spd			= 1;
	ind_cost		= 10;
	ind_ad_dist		= 120;
	ind_dep_any		= false;
	
	ind_spr_stand	= spr_mob_orc_shield_stand;
	ind_spr_walk	= spr_mob_orc_shield_walk;
	ind_spr_atk		= spr_mob_orc_shield_atk;
	ind_spr_death	= spr_mob_orc_shield_death;
	
	ind_s_atk		= s_axe01;
	ind_s_death		= s_dump;
}

function sc_info_mob_orc_axe()
{
	ind_atk_sc		= sc_atk_melee_5f_4;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 20;
	ind_hp_max		= 100;
	ind_hp			= ind_hp_max
	ind_ally		= 2;
	ind_spd			= 1;
	ind_cost		= 10;
	ind_ad_dist		= 120;
	ind_dep_any		= false;
	
	ind_spr_stand	= spr_mob_orc_axe_stand;
	ind_spr_walk	= spr_mob_orc_axe_walk;
	ind_spr_atk		= spr_mob_orc_axe_atk;
	ind_spr_death	= spr_mob_orc_axe_death;
	
	ind_s_atk		= s_axe02;
	ind_s_death		= s_dump;
}

function sc_info_mob_orc_range()
{
	ind_atk_sc		= sc_atk_range_5f_4;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 115;
	ind_atk_dmg		= 15;
	ind_hp_max		= 75;
	ind_hp			= ind_hp_max
	ind_ally		= 2;
	ind_spd			= 1;
	ind_cost		= 10;
	ind_ad_dist		= 120;
	ind_dep_any		= false;
	
	ind_spr_stand	= spr_mob_orc_range_stand;
	ind_spr_walk	= spr_mob_orc_range_walk;
	ind_spr_atk		= spr_mob_orc_range_atk;
	ind_spr_death	= spr_mob_orc_range_death;
	
	ind_s_atk		= s_axe_range;
	ind_s_death		= s_dump;
	
	ind_range_spr	= spr_mob_orc_range_atk_ef;
	ind_range_s		= s_axe01;
	ind_range_spd	= 3;
}

function sc_info_mob_goblin_thief()
{
	ind_atk_sc		= sc_atk_melee_5f_4;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 10;
	ind_hp_max		= 100;
	ind_hp			= ind_hp_max
	ind_ally		= 2;
	ind_spd			= 1;
	ind_cost		= 10;
	ind_ad_dist		= 120;
	ind_dep_any		= true;
	
	ind_spr_stand	= spr_mob_goblin_thief_stand;
	ind_spr_walk	= spr_mob_goblin_thief_walk;
	ind_spr_atk		= spr_mob_goblin_thief_atk;
	ind_spr_death	= spr_mob_goblin_thief_death;
	
	ind_s_atk		= s_sword01;
	ind_s_death		= s_dump;
}
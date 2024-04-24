// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_info_hero_shield()
{
	ind_atk_sc		= sc_atk_melee_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 10;
	ind_hp_max		= 150;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_shield_stand;
	ind_spr_walk	= spr_h_shield_walk;
	ind_spr_atk		= spr_h_shield_atk;
	ind_spr_death	= spr_h_shield_death;
	
	ind_s_atk		= s_sword02;
	ind_s_death		= s_dump;
}

function sc_info_hero_shield_red()
{
	ind_atk_sc		= sc_atk_melee_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 30;
	ind_hp_max		= 150;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_shield_red_stand;
	ind_spr_walk	= spr_h_shield_red_walk;
	ind_spr_atk		= spr_h_shield_red_atk;
	ind_spr_death	= spr_h_shield_red_death;
	
	ind_s_atk		= s_sword02;
	ind_s_death		= s_dump;
}

function sc_info_hero_shield_sick()
{
	ind_atk_sc		= sc_atk_melee_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 10;
	ind_hp_max		= 50;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_shield_sick_stand;
	ind_spr_walk	= spr_h_shield_sick_walk;
	ind_spr_atk		= spr_h_shield_sick_atk;
	ind_spr_death	= spr_h_shield_sick_death;
	
	ind_s_atk		= s_sword02;
	ind_s_death		= s_dump;
}

function sc_info_hero_sword()
{
	ind_atk_sc		= sc_atk_melee_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 25;
	ind_hp_max		= 60;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_sword_stand;
	ind_spr_walk	= spr_h_sword_walk;
	ind_spr_atk		= spr_h_sword_atk;
	ind_spr_death	= spr_h_sword_death;
	
	ind_s_atk		= s_sword02;
	ind_s_death		= s_dump;
}

function sc_info_hero_sword_red()
{
	ind_atk_sc		= sc_atk_melee_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 75;
	ind_hp_max		= 60;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_sword_red_stand;
	ind_spr_walk	= spr_h_sword_red_walk;
	ind_spr_atk		= spr_h_sword_red_atk;
	ind_spr_death	= spr_h_sword_red_death;
	
	ind_s_atk		= s_sword02;
	ind_s_death		= s_dump;
}


function sc_info_hero_sword_sick()
{
	ind_atk_sc		= sc_atk_melee_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 16;
	ind_atk_dmg		= 25;
	ind_hp_max		= 20;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_sword_sick_stand;
	ind_spr_walk	= spr_h_sword_sick_walk;
	ind_spr_atk		= spr_h_sword_sick_atk;
	ind_spr_death	= spr_h_sword_sick_death;
	
	ind_s_atk		= s_sword02;
	ind_s_death		= s_dump;
}

function sc_info_hero_bow()
{
	ind_atk_sc		= sc_atk_range_5f_3;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 100;
	ind_atk_dmg		= 25;
	ind_hp_max		= 30;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1;
	
	ind_spr_stand	= spr_h_bow_stand;
	ind_spr_walk	= spr_h_bow_walk;
	ind_spr_atk		= spr_h_bow_atk;
	ind_spr_death	= spr_h_bow_death;
	
	ind_s_atk		= s_bow01;
	ind_s_death		= s_dump;
	
	ind_range_spr	= spr_h_bow_atk_ef
	ind_range_s		= s_sword01;
	ind_range_spd	= 5;
}

function sc_info_hero_heal()
{
	ind_atk_sc		= sc_atk_heal_6f_4;
	ind_death_sc	= sc_death_4f;
	ind_atk_range	= 64;
	ind_atk_dmg		= 10;
	ind_hp_max		= 30;
	ind_hp			= ind_hp_max
	ind_ally		= 1;
	ind_spd			= 1.5;
	ind_ad_mod		= 1;
	
	ind_spr_stand	= spr_h_heal_stand;
	ind_spr_walk	= spr_h_heal_walk;
	ind_spr_atk		= spr_h_heal_atk;
	ind_spr_death	= spr_h_heal_death;
	
	ind_s_atk		= s_sword02;
	ind_s_death		= s_dump;
}
// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_data_global()
{
	global.roomBuffer = -1;
	global.screenBuffer = -1;

	global.mob_struct		= array_create(0);
	global.mob_struct[0]	= new MobDepStruct(0, obj_dep_goblin, sc_info_mob_goblin, 5); 
	global.mob_struct[1]	= new MobDepStruct(0, obj_dep_orc_shield, sc_info_mob_orc_shield, 5); 
}
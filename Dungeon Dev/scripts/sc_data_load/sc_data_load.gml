// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_data_load()
{
	VSLS_File_Load(global.save_file);
	
	global.ind_clear	= sc_vsls_define_value("ind_clear", 0);
	global.lan			= sc_vsls_define_value("ind_lan", -1);
}
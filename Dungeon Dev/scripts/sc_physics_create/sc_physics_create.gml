// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_create()
{
	ph_speed_x	= 0;
	ph_speed_y	= 0;
	ph_dir		= 0;
	ph_col_inst	= noone;
	
	ph_tile_x	= -1;
	ph_tile_y	= -1;
	
	ph_col_x	= 0;
	ph_col_y	= 0;
	
	var _layer		= layer_get_id("Instances");
	ph_depth		= layer_get_depth(_layer);
	depth			= ph_depth + y/room_height*100;
}
// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pathfind_create()
{
	grid = 16
	
	arr_cell_opened	= []; 
	arr_path		= [];
	
	ind_value		= -4;
	
	destiny_x		= 1
	destiny_y		= 1
	
	start_x			= 0
	start_y			= 0
	
	enum cell_type 
	{
		free		= 0,
		closed		= 99,
	}
	
	set_map();
	
	
	//map[@ 4][@ 1].value = cell_type.closed
	//map[@ 4][@ 2].value = cell_type.closed 
}
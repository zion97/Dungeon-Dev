// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pathfind_create()
{
	grid = 16
	
	arr_cell_opened = []; 
	arr_path = [];
	
	destiny_x = 1
	destiny_y = 1
	
	start_x = 0
	start_y = 0
	
	enum cell_type 
	{
		free,
		closed,
	}
	
	map = [];
	
	//width = room_width div grid - 1
	//height = room_height div grid 
	var	_tile_col		= layer_tilemap_get_id("Tile_col");
	
	width	= tilemap_get_width(_tile_col);
	height	= tilemap_get_height(_tile_col);
	
	for(var _w = 0; _w < width; _w++) {
		map[@ _w] = [];
		for(var _h = 0; _h < height; _h++) {
			map[@ _w][@ _h] = new cell(_w,_h) 
			var _value = tilemap_get(_tile_col, _w, _h);
			if (_value == 1)	map[@ _w][@ _h].value = cell_type.closed
		}
	}
	
	//map[@ 4][@ 1].value = cell_type.closed
	//map[@ 4][@ 2].value = cell_type.closed 
	 
	
	 
	
	
	
	
}
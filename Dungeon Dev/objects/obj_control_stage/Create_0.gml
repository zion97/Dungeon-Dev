/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
/*
var	_tile_col		= layer_tilemap_get_id("Tile_col");

var _tile_width		= tilemap_get_width(_tile_col);
var _tile_height	= tilemap_get_height(_tile_col);

global.pathfind_map = as_map_create(_tile_width, _tile_height, 0);

for (var _i = 0; _i < _tile_width; _i++)
{
	for (var _j = 0; _j < _tile_height; _j++)
	{
		var _value = tilemap_get(_tile_col, _i, _j);
		//if (_value == 3)	as_map_setcell(global.pathfind_map, _i, _j, 100);
	}
}
*/
sc_pathfind_create();

global.roomBuffer = -1;

global.screenBuffer = -1;

//surface_resize(application_surface, 640, 360);

show_debug_message("테스트");
show_debug_message(surface_get_width(application_surface));
show_debug_message(surface_get_height(application_surface));

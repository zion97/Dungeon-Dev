/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var	_tile_col	= layer_tilemap_get_id("Tile_col");

global.pathfind_map = as_map_create(tilemap_get_width(_tile_col), tilemap_get_height(_tile_col), 1);

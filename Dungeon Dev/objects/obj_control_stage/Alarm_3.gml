/// @description 용사 정보 받아오기
// 이 에디터에 코드를 작성할 수 있습니다
var _tile		= layer_tilemap_get_id("Tile");
var _tile_col	= layer_tilemap_get_id("Tile_col");

var _w			= tilemap_get_width(_tile_col);
var _h			= tilemap_get_height(_tile_col);

for (var _x = 0; _x < _w; _x++)
{
	for (var _y = 0; _y < _h; _y++)
	{
		with (collision_point(_x*16+8, _y*16+8, obj_pa_deploy_hero, true, true))
		{
			other.ind_hero_arr[other.ind_hero_num]	= id;
			other.ind_hero_num++;
		}
	}
}
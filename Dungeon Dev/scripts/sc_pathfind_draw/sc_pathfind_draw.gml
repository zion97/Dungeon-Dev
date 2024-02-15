// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pathfind_draw()
{
	var _base_x, _base_y;
	_base_x = grid
	_base_y = grid
	/*
	for(var _w = 0; _w <= array_length(map); _w++) { 
		draw_line(_base_x+_w*grid-grid,
		_base_y+0-grid,
		_base_x+_w*grid-grid,
		_base_y+(array_length(map[@ 0]))*grid-grid)
	}
	for(var _h = 0; _h <= array_length(map[@ 0]); _h++) {
		draw_line(_base_x+0-grid, 
		_base_y+_h*grid-grid, 
		_base_x+(array_length(map))*grid-grid, 
		_base_y+_h*grid-grid)
	}
	*/

	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	for(var _w = 0; _w < array_length(map); _w++) { 
		for(var _h = 0; _h < array_length(map[@ 0]); _h++) {
			var _x, _y;
			_x = _base_x + _w * grid - grid/2
			_y = _base_y + _h * grid - grid/2
			//draw_text(_x,_y, map[@ _w][@ _h].h)
			/*draw_text_transformed(_x+grid/2.75,_y+grid/2.75, "H:"+string(map[@ _w][@ _h].h),1,1,0);
			draw_text_transformed(_x-grid/2.75,_y+grid/2.75, "G:"+string(map[@ _w][@ _h].g),1,1,0);
			draw_text_transformed(_x-grid/2.75,_y-grid/2.75, "F:"+string(map[@ _w][@ _h].f),1,1,0);
			*/
			if(map[@ _w][@ _h].value == cell_type.closed) {
				draw_rectangle(_x-8,_y-8,_x+8,_y+8,false)
			}
			/*
			if(map[@ _w][@ _h].father_x != noone) {
				var _x_m, _y_m, _x_f, _y_f;
				_x_m = _base_x + _w * grid - grid/2
				_y_m = _base_y + _h * grid - grid/2
				_x_f = _base_x + map[@ _w][@ _h].father_x * grid - grid/2
				_y_f = _base_y + map[@ _w][@ _h].father_y * grid - grid/2
				draw_arrow(_x_m, _y_m,_x_f,_y_f,20)
			}*/
		}
	}
	draw_set_halign(-1)
	draw_set_valign(-1)
	
	
	draw_set_alpha(1)
	draw_set_color(c_red)
	draw_circle(destiny_x*grid+grid/2, destiny_y*grid+grid/2, 4, false);
	
	draw_set_color(c_green)
	draw_circle(start_x*grid+grid/2, start_y*grid+grid/2, 4, false);
	
	draw_set_color(c_orange);
	for(var _i = 1; _i < array_length(arr_path); _i++) {
		var _x_previous, _y_previous, _x_current,_y_current;
		_x_previous = arr_path[@ _i-1].x*grid+grid/2;
		_y_previous = arr_path[@ _i-1].y*grid+grid/2; 
		_x_current = arr_path[@ _i].x*grid+grid/2;
		_y_current = arr_path[@ _i].y*grid+grid/2; 
		draw_line_width(_x_previous,_y_previous,_x_current,_y_current,8);
		 
	}
	
	draw_set_color(c_white)
	draw_set_alpha(1)
}
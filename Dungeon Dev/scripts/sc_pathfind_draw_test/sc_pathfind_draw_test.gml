// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pathfind_draw_test()
{
	var _base_x, _base_y;
	_base_x = grid
	_base_y = grid

	draw_set_halign(-1)
	draw_set_valign(-1)
	
	draw_set_color(c_orange);
	for(var _i = 1; _i < array_length(ind_path); _i++) {
		var _x_previous, _y_previous, _x_current,_y_current;
		_x_previous = ind_path[@ _i-1].x*grid+grid/2;
		_y_previous = ind_path[@ _i-1].y*grid+grid/2; 
		_x_current = ind_path[@ _i].x*grid+grid/2;
		_y_current = ind_path[@ _i].y*grid+grid/2; 
		draw_line_width(_x_previous,_y_previous,_x_current,_y_current,8);
		 
	}
	
	draw_set_alpha(1)
	draw_set_color(c_red)
	draw_circle(ind_path_tx, ind_path_ty, 4, false);
	
	var _ind = array_length(ind_path)
	var _tx = 0;
	var _ty = 0;
	if (_ind > 1)
	{
		_tx	= ind_path[@ _ind-2].x;
		_ty	= ind_path[@ _ind-2].y;
	}
	draw_set_color(c_yellow)
	draw_circle(_tx*grid+grid/2, _ty*grid+grid/2, 4, false);
	
	
	
	
	draw_set_color(c_white)
	draw_set_alpha(1)
}
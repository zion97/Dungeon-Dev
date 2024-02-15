// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pathfind_step()
{
	
	if(keyboard_check_pressed(vk_escape)) { window_set_fullscreen(!window_get_fullscreen()) }
	
	var _type_click = 0;
	
	if(mouse_check_button(mb_middle)) { _type_click = 3 }
	if(mouse_check_button_pressed(mb_left)) { _type_click = 2 }
	if(mouse_check_button_pressed(mb_right)) { _type_click = 1 } 
	
	if(_type_click != 0) {
		var _x, _y;
		_x = clamp(mouse_x div grid, 0, array_length(map)-1)
		_y = clamp(mouse_y div grid, 0, array_length(map[@ 0])-1)
		 
		var _dest = map[@ _x][@ _y]
		for(var _w = 0; _w < array_length(map); _w++) {
			for(var _h = 0; _h < array_length(map[@ 0]); _h++) {
				switch(_type_click) {
					case 1: map[@ _w][@ _h].calculate_h(_dest); break;
					case 2: map[@ _w][@ _h].calculate_g(_dest); break;
				}
			}
		}
		switch(_type_click) {
			case 1: set_destiny(_x, _y); break;
			case 2: set_start(_x, _y);  break;
			case 3: map[@ _x][@ _y].value = cell_type.closed break;
		} 
		
		pathfinding()
	}
	if(keyboard_check_pressed(vk_space)) {
		var _x, _y;
		_x = clamp(mouse_x div grid, 0, array_length(map)-1)
		_y = clamp(mouse_y div grid, 0, array_length(map[@ 0])-1)
		 
		map[@ _x][@ _y].value = !map[@ _x][@ _y].value
	}
	
}
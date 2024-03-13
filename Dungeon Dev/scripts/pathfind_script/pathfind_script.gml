// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function set_destiny(_x,_y)
{
	destiny_x = _x
	destiny_y = _y
}

function set_start(_x,_y) 
{
	start_x = _x
	start_y = _y
}

function cell(_x, _y) constructor 
{
	x = _x;
	y = _y;
	
	value = cell_type.free;
	
	father_x = noone;
	father_y = noone;
	
	add_father = function(_father_x, _father_y) {
		father_x = _father_x;
		father_y = _father_y;
	}
	reset_father = function() {
		father_x = noone;
		father_y = noone;
	}
	 
	f = 0;
	 
	g = 0;
	calculate_g = function(base) {
		var _x, _y;
		_x = base.x;
		_y = base.y; 
		g = point_distance(x,y,_x,_y);
		f = g + h;
	}
	 
	h = 0;
	calculate_h = function(dest) {
		var _x, _y;
		_x = dest.x;
		_y = dest.y; 
		h = point_distance(x,y,_x,_y);
		f = g + h;
	}
}


function try_add_to_opened_arr(_x, _y) 
{
	var _lenght_horizontal, _lenght_vertical;
	_lenght_horizontal = array_length(map)
	_lenght_vertical = array_length(map[@ 0])
	
	if(_x+1 < _lenght_horizontal) { 
		if(map[@ _x+1][@ _y].value == cell_type.free) {
			if(map[@ _x+1][@ _y].father_x == noone ) { 
				arr_cell_opened[@ array_length(arr_cell_opened)] = { x : _x+1, y : _y }
				map[@ _x+1][@ _y].add_father(_x,_y);
			}
		} 
	}
	if(_x-1 >= 0) { 
		if(map[@ _x-1][@ _y].value == cell_type.free) {
			if(map[@ _x-1][@ _y].father_x == noone ) { 
				arr_cell_opened[@ array_length(arr_cell_opened)] = { x : _x-1, y : _y }
				map[@ _x-1][@ _y].add_father(_x,_y);
			}
		} 
	}
	if(_y+1 < _lenght_vertical) { 
		if(map[@ _x][@ _y+1].value == cell_type.free) {
			if(map[@ _x][@ _y+1].father_x == noone  ) { 
				arr_cell_opened[@ array_length(arr_cell_opened)] = { x : _x, y : _y+1 }
				map[@ _x][@ _y+1].add_father(_x,_y);
			}
		} 
	}
	if(_y-1 >= 0) { 
		if(map[@ _x][@ _y-1].value == cell_type.free) {
			if(map[@ _x][@ _y-1].father_x == noone ) { 
				arr_cell_opened[@ array_length(arr_cell_opened)] = { x : _x, y : _y-1 }
				map[@ _x][@ _y-1].add_father(_x,_y);
			}
		} 
	}
	
	
	if(_y+1 < _lenght_vertical && _x+1 < _lenght_horizontal) { 
		if(map[@ _x+1][@ _y+1].value == cell_type.free) {
			if(map[@ _x+1][@ _y].value == cell_type.free && map[@ _x][@ _y+1].value == cell_type.free) {
				if(map[@ _x+1][@ _y+1].father_x == noone ) { 
					arr_cell_opened[@ array_length(arr_cell_opened)] = { x : _x+1, y : _y+1 }
					map[@ _x+1][@ _y+1].add_father(_x,_y);
				}
			}
		} 
	}
	
	if(_y-1 >= 0 && _x+1 <_lenght_horizontal) { 
		if(map[@ _x+1][@ _y-1].value == cell_type.free) {
			if(map[@ _x+1][@ _y].value == cell_type.free && map[@ _x][@ _y-1].value == cell_type.free) {
				if(map[@ _x+1][@ _y-1].father_x == noone ) { 
					arr_cell_opened[@ array_length(arr_cell_opened)] = { x : _x+1, y : _y-1 }
					map[@ _x+1][@ _y-1].add_father(_x,_y);
				}
			}
		} 
	} 
	
	if(_y+1 < _lenght_vertical && _x-1 >= 0) { 
		if(map[@ _x-1][@ _y+1].value == cell_type.free) {
			if(map[@ _x-1][@ _y].value == cell_type.free && map[@ _x][@ _y+1].value == cell_type.free) {
				if(map[@ _x-1][@ _y+1].father_x == noone ) { 
					arr_cell_opened[@ array_length(arr_cell_opened)] = { x : _x-1, y : _y+1 }
					map[@ _x-1][@ _y+1].add_father(_x,_y);
				}
			}
		} 
	}
	
	if(_y-1 >= 0 && _x-1 >= 0) {
		if(map[@ _x-1][@ _y-1].value == cell_type.free) {
			if(map[@ _x-1][@ _y].value == cell_type.free && map[@ _x][@ _y-1].value == cell_type.free) {
				if(map[@ _x-1][@ _y-1].father_x == noone ) { 
					arr_cell_opened[@ array_length(arr_cell_opened)] = { x : _x-1, y : _y-1 }
					map[@ _x-1][@ _y-1].add_father(_x,_y);
				}
			}
		}
	}
}

function opened_arr_to_ascending_order() 
{/**/ 
	var _minimium_value = 99999999;
	var _minimium_index = 0;
	var _lenght = array_length(arr_cell_opened)
	if(_lenght < 1) { exit }
	for(var _i = 0; _i < _lenght; _i++;) {
		var _x, _y;
		_x = arr_cell_opened[@ _i].x;
		_y = arr_cell_opened[@ _i].y;
		var _value = map[@ _x][@ _y].h;
		
		if(_value < _minimium_value) {
			_minimium_value = _value;
			_minimium_index = _i;
		}
	}
	var _index, _dest;
	_dest = arr_cell_opened[@ 0]
	_index = arr_cell_opened[@ _minimium_index]
	
	arr_cell_opened[@ 0] = _index
	arr_cell_opened[@ _minimium_index] = _dest 
}

function pathfinding() 
{
	arr_cell_opened = []; 
	arr_path = [];
	for(var _w = 0; _w < width; _w++) {
		for(var _h = 0; _h < height; _h++) {
			map[@ _w][@ _h].reset_father();
		}
	}
	 
	try_add_to_opened_arr(start_x,start_y);
	map[@ start_x][@ start_y].add_father(start_x,start_y);
	
	opened_arr_to_ascending_order();
	var _size_loop = array_length(map)*array_length(map[@ 0])
	
	if(destiny_x != start_x || destiny_y != start_y) {
		for(var _test = 0; _test < _size_loop; _test++) { 
			if(array_length(arr_cell_opened) <= 0) { exit }
			var _x, _y;
			_x = arr_cell_opened[@ 0].x;
			_y = arr_cell_opened[@ 0].y; 
			
			try_add_to_opened_arr(_x,_y);
			
			array_delete(arr_cell_opened, 0, 1);
			
			opened_arr_to_ascending_order();
			
			if(_x == destiny_x && _y == destiny_y) { 
				var _father_x = destiny_x
				var _father_y = destiny_y
				arr_path[@ array_length(arr_path)] = { x : _father_x, y : _father_y}
				var _size_loop = array_length(map)*array_length(map[@ 0])
				for(var _path_reverse_find = 0; _path_reverse_find < _size_loop; _path_reverse_find++;) {
					var _x, _y;
					_x = map[@ _father_x][@ _father_y].father_x;
					_y = map[@ _father_x][@ _father_y].father_y;
					
					arr_path[@ array_length(arr_path)] = { x : _x, y : _y} 
					if(_x == start_x && _y == start_y) {   
						exit;
					}
					_father_x = _x
					_father_y = _y
				}
				exit;
			} 
		}
	}
}
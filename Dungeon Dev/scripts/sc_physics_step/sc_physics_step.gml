// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_step()
{
	if (hspeed > 0)	
	{
		image_xscale = 1;
	}
	else if (hspeed < 0)	
	{
		image_xscale = -1;
	}
	
	if (ph_col_x != 0 || ph_col_y != 0)
	{
		hspeed	+= ph_col_x;
		vspeed	+= ph_col_y;
	}
	ph_col_x	= 0;
	ph_col_y	= 0;

	
	if (hspeed > 0)	
	{
		if (sc_physics_col(bbox_right, y) == 1)
		{
			hspeed	= 0;
		}
		//if (_sca)	image_xscale = 1;
	}
	else if (hspeed < 0)	
	{
		if (sc_physics_col(bbox_left, y) == 1)
		{
			hspeed	= 0;
		}
		//if (_sca)	image_xscale = -1;
	}
	
	if (vspeed > 0)	
	{
		if (sc_physics_col(x, bbox_bottom) == 1)
		{
			vspeed	= 0;
		}
	}
	else if (vspeed < 0)	
	{
		if (sc_physics_col(x, bbox_top) == 1)
		{
			vspeed	= 0;
		}
	}
	//sc_physics_path_col();
	depth			= ph_depth - y/room_height*80;
}

function sc_physics_stop()
{
	speed	= 0;
	vspeed	= 0;
	hspeed	= 0;
}

function sc_physics_path_col()
{
	if (abs(hspeed) < 0.2 && abs(vspeed) < 0.2)
	{
		if (ph_tile_x > -1)
		{
			sc_physics_set_map_value(ph_tile_x, ph_tile_y, 1);
			ph_tile_x	= -1;
			ph_tile_y	= -1;
		}

		var _x	= x;
		var _y	= y;
		with (obj_control_parent)
		{
			_x = clamp(_x div grid, 0, array_length(map)-1);
			_y = clamp(_y div grid, 0, array_length(map[@ 0])-1);
			
			map[@ _x][@ _y].value = 4;
		}
		ph_tile_x	= _x;
		ph_tile_y	= _y;
	}
	else
	{
		if (ph_tile_x > -1)
		{
			sc_physics_set_map_value(ph_tile_x, ph_tile_y, 1);
		}
		ph_tile_x	= -1;
		ph_tile_y	= -1;
	}
}

function sc_physics_set_map_value(_x, _y, _value)
{
	with (obj_control_parent)
	{
		map[@ _x][@ _y].value = _value;
	}
}
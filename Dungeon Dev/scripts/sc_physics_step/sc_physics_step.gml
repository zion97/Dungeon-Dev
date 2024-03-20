// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_step()
{
	var _sca	= true;
	
	with (ph_col_inst)
	{
		/*
		var _dir		= point_direction(x, y, other.x, other.y);
		var _l			= angle_difference(_dir, other.direction);
		if (abs(_l) > 90)
		{
			if (_l > 0)	{ _dir -= 90; }
			else		{ _dir += 90; }
			other.direction	= _dir;
			_sca			= false;
		}
		*/
		
		var _dist	= 4;
		var _ind_x	= x - other.x;
		if (abs(_ind_x) < _dist)
		{
			if (_ind_x > 0)
			{
				hspeed	+= (_dist - _ind_x)/4;
			}
			else
			{
				hspeed	-= (_dist + _ind_x)/4;
			}
		}
		
		var _ind_y	= y - other.y;
		if (abs(_ind_y) < 4)
		{
			if (_ind_y > 0)
			{
				hspeed	+= (_dist - _ind_y)/4;
			}
			else
			{
				hspeed	-= (_dist + _ind_y)/4;
			}
		}
		
	}
	ph_col_inst	= noone;
	
	if (hspeed > 0)	
	{
		if (sc_physics_col(bbox_right, y) == 1)
		{
			hspeed	= 0;
		}
		if (_sca)	image_xscale = 1;
	}
	else if (hspeed < 0)	
	{
		if (sc_physics_col(bbox_left, y) == 1)
		{
			hspeed	= 0;
		}
		if (_sca)	image_xscale = -1;
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
	
	depth			= ph_depth - y/room_height*80;
}

function sc_physics_stop()
{
	speed	= 0;
	vspeed	= 0;
	hspeed	= 0;
}
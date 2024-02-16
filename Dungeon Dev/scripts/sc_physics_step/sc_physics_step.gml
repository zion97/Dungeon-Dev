// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_step()
{
	if (hspeed > 0)	
	{
		if (sc_physics_col(bbox_right, y) == 1)
		{
			hspeed	= 0;
		}
		image_xscale = 1;
	}
	else if (hspeed < 0)	
	{
		if (sc_physics_col(bbox_left, y) == 1)
		{
			hspeed	= 0;
		}
		image_xscale = -1;
	}
	
	if (vspeed > 0)	
	{
		if (sc_physics_col(x, bbox_bottom) == 1)
		{
			vspeed	= 0;
		}
		image_xscale = 1;
	}
	else if (vspeed < 0)	
	{
		if (sc_physics_col(x, bbox_top) == 1)
		{
			vspeed	= 0;
		}
		image_xscale = -1;
	}
	
	
}
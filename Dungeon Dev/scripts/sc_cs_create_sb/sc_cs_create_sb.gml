// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_create_sb(_x, _y, _ind)
{
	with (instance_create_depth(_x, _y-20, 50, obj_cs_sb))
	{
		if (_ind == 0)
		{
			sprite_index	= spr_talk_th;
		}
		else if (_ind == 1)
		{
			sprite_index	= spr_talk_qu;
		}
		else if (_ind == 2)
		{
			sprite_index	= spr_talk_ex;
		}
		image_index	= 0;
	}
}
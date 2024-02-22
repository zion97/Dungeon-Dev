// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_step()
{
	with(ind_ad)
	{
		other.ind_path_tx	= x;
		other.ind_path_ty	= y;
	}
	
	if (ind_state == 0)
	{
		sprite_index	= ind_spr_stand;
		ind_delay++;
		
		if (ind_delay > ind_delay_max)
		{
			if (sc_character_ad())
			{
				ind_state	= 1;
			}
			sc_character_reset_delay();
		}
	}
	else if (ind_state == 1)
	{
		sc_character_move();
	}
	
	
	
}
// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_step()
{
	
	if (!ind_death)
	{
		with(ind_ad)
		{
			other.ind_path_tx	= x;
			other.ind_path_ty	= y;
		}
		
		if (ind_state == 0)
		{
			sprite_index	= ind_spr_stand;
			ind_process++;
			
			if (ind_process > ind_delay)
			{
				if (sc_character_ad())
				{
					ind_state	= 1;
					ind_process	= 0;
				}
				else
				{
					sc_character_reset_delay();
					if (ind_ad != noone)
					{
						ind_ad	= noone;
						x		+= irandom_range(-2, 2);
						y		+= irandom_range(-2, 2);
					}
				}
			}
		}
		else if (ind_state == 1)
		{
			var _dist	= point_distance(x, y, ind_path_tx, ind_path_ty);
			var _hp		= 0
			with (ind_ad)	{ _hp = ind_hp; }
			if (_hp <= 0)
			{
				speed = 0;
				ind_state	= 0;
				sc_character_reset_delay();
			}
			else if (_dist < ind_atk_range)
			{
				speed = 0;
				ind_state	= 2;
				ind_process	= 0;
				sc_set_dir();
			}
			else
			{
				sc_character_move(_dist);
			}
		}
		else if (ind_state == 2)
		{
			ind_atk_sc();
		}
		
		if (ind_hp <= 0)
		{
			speed		= 0;
			ind_death	= true;
			ind_process	= 0;
			with (obj_control_stage)
			{
				alarm[2]	= 1;
			}
		}
	}
	else
	{
		ind_death_sc();
	}
	
}
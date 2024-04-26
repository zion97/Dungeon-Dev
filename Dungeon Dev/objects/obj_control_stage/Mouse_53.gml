/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if		(ind_button_num == 1)	{ alarm[5]	= 1;	return; }
else if (ind_button_num == 2)	{ alarm[6]	= 1;	return; }
else if (ind_button_num == 3)	{ alarm[7]	= 1;	return; }

if (ind_state == 0)
{
	if (ind_dep_num > -1)
	{
		with (obj_deploy_mob_mouse)	{ instance_destroy(); }
		
		var _cost		= global.mob_struct[ind_dep_num].ind_cost;
		var _dep_num	= ind_dep_num;
		with (instance_create_layer(mouse_x, mouse_y, "Deploy", obj_deploy_mob_mouse))
		{
			//dep_inst		= global.mob_struct[ind_dep_num].obj;	
			dep_struct		= global.mob_struct[_dep_num];	
			dep_ad_dist		= dep_struct.ind_ad_dist;
			sprite_index	= dep_struct.ind_spr_stand;
		}
		/*
		if (_cost <= (stage_cost - ind_cost))
		{
			with (instance_create_layer(mouse_x, mouse_y, "Deploy", global.mob_struct[ind_dep_num].obj))
			{
				ind_bx		= -1;
				ind_click	= true;
				ind_enter	= true;
				ind_cost	= _cost
			}
			ind_cost	+= _cost;
		}
		else
		{
			uc_shake(1, 0.2);
		}
		*/
	}
}

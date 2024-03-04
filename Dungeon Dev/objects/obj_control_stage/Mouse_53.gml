/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (ind_dep_num > -1)
{
	var _cost	= global.mob_struct[ind_dep_num].ind_cost;
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
}

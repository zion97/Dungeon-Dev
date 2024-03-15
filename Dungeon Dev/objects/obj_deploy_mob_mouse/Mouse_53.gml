/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (!ind_col && ind_cost_c)
{
	with (instance_create_layer(mouse_x, mouse_y, "Deploy", dep_struct.obj))
	{
		ind_bx		= -1;
		ind_click	= false;
		ind_enter	= false;
		ind_cost	= other.dep_struct.ind_cost;
		dep_ad_dist	= other.dep_struct.ind_ad_dist;
		
		ind_bx	= x;
		ind_by	= y;
		
		SE_Play(s_deploy);
			
		var _l		= layer_get_id("Instances");
		var _part	= part_system_create_layer(_l, false, p_deploy_dust);
		part_system_position(_part, x, bbox_bottom);
	}
	var _cost		= dep_struct.ind_cost;
	with (obj_control_stage)	{ ind_cost	+= _cost; }
	
	
}
else
{
	uc_shake(1, 0.2);
}
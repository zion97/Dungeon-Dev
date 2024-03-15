/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (ind_state == 0)
{
	with (obj_pa_character)
	{
		instance_destroy();
	}
	with (obj_pa_deploy_mob)
	{
		var _l		= layer_get_id("Instances");
		var _part	= part_system_create_layer(_l, false, p_deploy_remove);
		part_system_position(_part, x, bbox_bottom);
		instance_destroy();
	}
	SE_Play(s_deploy_remove);
	ind_cost	= 0;
	
}
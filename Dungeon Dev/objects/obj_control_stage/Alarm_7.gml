/// @description Space 입력
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
else if (ind_state == 1)
{
	var _i	= 0;
	if (global.game_spd == 0)	_i	= 1;
	sc_control_set_game_spd(_i);
}
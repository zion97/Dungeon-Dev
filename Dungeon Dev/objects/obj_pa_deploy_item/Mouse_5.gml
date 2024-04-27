/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
/*
with (obj_deploy_mob_mouse)	{ return; }
var _cost	= ind_cost;
with (obj_control_stage)	{ ind_cost	-= _cost; }

SE_Play(s_deploy_remove);

var _l		= layer_get_id("Instances");
var _part	= part_system_create_layer(_l, false, p_deploy_remove);
part_system_position(_part, x, bbox_bottom);

instance_destroy();
*/
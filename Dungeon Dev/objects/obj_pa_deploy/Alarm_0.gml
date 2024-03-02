/// @description 인스턴스 생성
// 이 에디터에 코드를 작성할 수 있습니다
var _hp		= dep_hp;
var _dmg	= dep_dmg;
var _class	= dep_class;
var _goal	= dep_goal;
with (instance_create_layer(x, y, "Instances", dep_inst))
{
	if (_hp > 0)
	{
		ind_hp_max		= _hp;
		ind_hp			= _hp;
	}
	if (_dmg > 0)
	{
		ind_atk_dmg		= _dmg;
	}
	if (_class > -1)
	{
		ind_class		= _class;
		ind_goal_max	= _goal;
	}
}
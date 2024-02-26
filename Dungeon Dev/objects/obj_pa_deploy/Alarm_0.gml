/// @description 인스턴스 생성
// 이 에디터에 코드를 작성할 수 있습니다
var _hp	= dep_hp;
with (instance_create_layer(x, y, "Instances", dep_inst))
{
	if (_hp > 0)
	{
		ind_hp_max	= _hp;
		ind_hp		= _hp;
	}
}
/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _x		= 0;
var _y		= 0;
with (ind_target)
{
	_x	= x;
	_y	= y;
}
var _dist	= point_distance(x, y, _x, _y);

if (_dist > ind_spd)
{
	move_towards_point(_x, _y, ind_spd);
	image_angle	= direction;
}
else
{
	sc_atk_range();
	instance_destroy();
}
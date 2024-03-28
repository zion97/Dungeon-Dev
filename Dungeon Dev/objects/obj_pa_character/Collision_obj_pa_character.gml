/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (!ind_death)
{
	sc_physics_col_char(other);
}
/*
if (!ind_death)
{
	var _dist	= 999;
	var _x		= x;
	var _y		= y;
	with (ph_col_inst)
	{
		_dist	= point_distance(x, y, _x, _y);
	}
	
	if (!other.ind_death && _dist > point_distance(x, y, other.x, other.y))
	{
		ph_col_inst	= other.id;
	}
}
*/
/*
var _xspd	= (y-other.y)/2;
var _yspd	= (x-other.x)/20;

hspeed	= _xspd;
vspeed	= _yspd;
*/
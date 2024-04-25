/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _port_h	= uc_get_port_height();
if (y < room_height*(1080-316)/_port_h)
{
	x	= 16 * (mouse_x div 16) + 8;
	y	= 16 * (mouse_y div 16) + 8;
	ind_col		= false;
	ind_dep_ui	= false;
}
else
{
	x	= mouse_x;
	y	= mouse_y;
	ind_col		= true;
	ind_dep_ui	= true;
}

if (sc_physics_col(x, y) || collision_point(x, y, obj_pa_deploy_character, true, true))	
{ 
	ind_col	= true; 
}
else
{
	if (collision_point(x, y, obj_dep_cant, true, true))	{ ind_col	= true; }
	if (dep_struct.ind_dep_any)								{ ind_col	= false; }
}

var _stage_cost	= 0;
var	_ind_cost	= 0;
var _cost		= dep_struct.ind_cost;
with (obj_control_stage)	{ _stage_cost = stage_cost;	_ind_cost = ind_cost; }
ind_cost_c	= false;

if (_cost <= _stage_cost - _ind_cost)
{
	ind_cost_c	= true;
}
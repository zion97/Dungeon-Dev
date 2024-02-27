/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (ind_click)
{
	x	= 16 * (mouse_x div 16) + 8;
	y	= 16 * (mouse_y div 16) + 8;

	ind_col	= false;
}
if (collision_point(x, y, obj_pa_deploy, true, true) || sc_physics_col(x, y))
{
	ind_col	= true;
}
if (mouse_x > x-8 && mouse_x < x+8 && mouse_y > y-8 && mouse_y < y+8)
{
	ind_enter	= true;
}
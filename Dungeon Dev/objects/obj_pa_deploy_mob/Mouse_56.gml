/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (ind_click && ind_col)
{
	if (ind_bx < 0)
	{
		instance_destroy();
	}
	x	= ind_bx;
	y	= ind_by;
}
else
{
	ind_bx	= x;
	ind_by	= y;
}
ind_click	= false;
ind_dep_ui	= false;
/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (ind_dep_num > -1)
{
	with (instance_create_layer(mouse_x, mouse_y, "Deploy", global.mob_struct[ind_dep_num].obj))
	{
		ind_bx		= -1;
		ind_click	= true;
		ind_enter	= true;
	}
}

/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
image_index	= 0;
if (ind_button == ind_select)
{
	image_index	= 1;
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
	{
		alarm[0] = 1;
	}
}
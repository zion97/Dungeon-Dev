/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
image_index	= 0;
if (global.lan == lan_num)
{
	image_index	= 2;
}

if (mouse_x	> bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom)
{
	image_index++;
	ind_mouse_in	= true;
}
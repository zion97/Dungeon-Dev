/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (!ind_active)	return;
image_index	= ind_img_num;

if (mouse_x	> x-12 && mouse_x < x+12 && mouse_y > y-12 && mouse_y < y+12)
{
	image_index	= ind_img_num + 1;
}
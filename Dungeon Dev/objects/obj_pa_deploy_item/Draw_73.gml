/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
/*
draw_set_alpha(1);
if (ind_dep_ui) return;
if (ind_click)
{
	if (ind_col)
	{
		draw_set_color(c_red);
	}
	else
	{
		draw_set_color(c_green);
	}
	draw_set_alpha(0.3);
	draw_rectangle(x-8, y-8, x+7, y+7, false);
	draw_set_alpha(1);
}
if (ind_enter || ind_click)
{
	if (ind_col)
	{
		draw_set_color(c_red);
	}
	else
	{
		draw_set_color(c_green);
	}
	draw_set_alpha(1);
	draw_line_width(x-9, y-8, x+7, y-8, 1);
	draw_line_width(x-9, y-8, x-9, y+7, 1);
	draw_line_width(x+7, y+7, x-9, y+7, 1);
	draw_line_width(x+7, y+7, x+7, y-8, 1);
}
draw_set_alpha(1);
draw_self();
ind_enter	= false;
*/
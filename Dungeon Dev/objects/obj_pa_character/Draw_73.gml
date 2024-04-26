/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (ind_hp < ind_hp_max && ind_hp > 0)
{
	draw_set_color(c_red);
	draw_rectangle(x-4, bbox_bottom+4, x+4, bbox_bottom+2, false);
	
	var _i = ind_hp / ind_hp_max;
	draw_set_color(c_green);
	draw_rectangle(x-4, bbox_bottom+4, x-4+(8*_i), bbox_bottom+2, false);
}

if (ind_point)
{
	draw_sprite(spr_character_point, 0, x, y);
	ind_point = false;
}
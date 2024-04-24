/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_self();
if (ind_talk)	
{
	var _i	= 0;
	if (!ind_active)	_i = 1;
	draw_sprite(spr_stage_button_talk, _i, bbox_right, bbox_top);
}
/*
draw_set_font(global.font_pixel[global.lan]);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(x, y, ind_text);
*/
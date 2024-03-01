/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _port_w	= uc_get_port_width();
var _port_h	= uc_get_port_height();

if (ind_state == 1 || ind_state == 2)
{
	
	draw_set_alpha(0.4);
	draw_set_color(c_black);
	draw_rectangle(-5, -5, 2600, 1085, false);
	
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_sprite(ind_pic, ind_pin_num, _port_w-700, _port_h);
	draw_sprite_ext(spr_deploy_back, 0, _port_w/2, _port_h+100, 3, 3, 0, c_white, 1);
	
	
}
if (ind_state == 1)
{
	draw_set_font(global.font_name[global.lan]);
	draw_set_color(c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_text(_port_w/2, _port_h-200, ind_name);
	draw_set_font(global.font_text[global.lan]);
	draw_text_ext(_port_w/2, _port_h-140, ind_text, 40, 1600);
}
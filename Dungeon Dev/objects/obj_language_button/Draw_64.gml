/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _scale	= uc_get_port_height()/uc_get_view_height();
var _x		= (x-uc_get_view_x())*_scale;
var _y		= y*_scale;


draw_set_font(global.font_name[lan_num]);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(#25131A);
if (ind_mouse_in)	{ draw_set_color(#840000); }

draw_text(_x, _y, global.font_display[lan_num]);

ind_mouse_in	= false;
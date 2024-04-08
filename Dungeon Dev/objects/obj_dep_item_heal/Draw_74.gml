/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _scale	= uc_get_port_height()/uc_get_view_height();
var _x		= (x-uc_get_view_x())*_scale;
var _y		= (y-8)*_scale;
//var _y2		= (bbox_top-2)*_scale;
var _i		= 0;

draw_set_color(c_red);
draw_set_font(global.font_num);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

_i		= string_width("+50");
draw_sprite(spr_icon_hp, 0, _x-_i/2, _y);
draw_text(_x+10, _y, "+50");
/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _scale	= uc_get_port_height()/uc_get_view_height();
var _x		= (x-uc_get_view_x())*_scale;
var _y		= (bbox_bottom+4)*_scale;
var _y2		= (bbox_top-2)*_scale;
var _i		= 0;


draw_set_font(global.font_num);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

_i		= string_width(dep_hp);
draw_sprite(spr_icon_hp, 0, _x-30-_i/2, _y);
draw_text(_x-20, _y, dep_hp);


_i		= string_width(dep_dmg);
draw_sprite(spr_icon_dmg, 0, _x+30-_i/2, _y);
draw_text(_x+40, _y, dep_dmg);


var _goal	= "0/" + string(dep_goal);
_i		= string_width(_goal);
draw_sprite(spr_icon_class, dep_class, _x-_i/2 -5, _y2);
draw_text(_x+5, _y2, _goal);

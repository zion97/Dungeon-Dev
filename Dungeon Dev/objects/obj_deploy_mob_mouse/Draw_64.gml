/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _scale	= uc_get_port_height()/uc_get_view_height();
var _x		= (x-uc_get_view_x())*_scale;
var _y		= (y+6)*_scale;
var _l	= string_width(dep_struct.ind_cost);
draw_set_alpha(1);
draw_set_color(c_white);
draw_sprite(spr_icon_coin, 0, _x-_l/2, _y);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(global.font_num);

draw_text(_x+3,_y, dep_struct.ind_cost);
draw_text(_x+7,_y, dep_struct.ind_cost);
draw_text(_x+5,_y-2, dep_struct.ind_cost);
draw_text(_x+5,_y+2, dep_struct.ind_cost);

draw_text(_x+3,_y-2, dep_struct.ind_cost);
draw_text(_x+7,_y-2, dep_struct.ind_cost);
draw_text(_x+3,_y+2, dep_struct.ind_cost);
draw_text(_x+7,_y+2, dep_struct.ind_cost);

draw_set_color(c_black);
if (!ind_cost_c)	draw_set_color(c_red);
draw_text(_x+5,_y, dep_struct.ind_cost);
			
draw_set_color(c_white);
if (!ind_dep_ui)	return;
draw_set_alpha(1);

draw_sprite_ext(sprite_index, image_index, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 
	_scale, _scale, 0, c_white, 1);

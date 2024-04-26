// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_hero_draw_class(_ui_x	= x, _ui_y	= bbox_top)
{
	var _scale	= uc_get_port_height()/uc_get_view_height();
	var _x		= (_ui_x-uc_get_view_x())*_scale;
	var _y		= (_ui_y-2)*_scale;
	var _i		= 0;
	
	draw_set_font(global.font_num);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var _goal	= string(ind_goal) + "/" + string(ind_goal_max);
	_i		= string_width(_goal);
	
	draw_set_color(c_white);
	//draw_text(_x+7, _y, _goal);
	//draw_text(_x+3, _y, _goal);
	//draw_text(_x+5, _y+2, _goal);
	//draw_text(_x+5, _y-2, _goal);
	//draw_text(_x+7, _y+2, _goal);
	//draw_text(_x+3, _y+2, _goal);
	//draw_text(_x+7, _y-2, _goal);
	//draw_text(_x+3, _y-2, _goal);
	
	//draw_set_color(c_black);
	if (ind_goal >= ind_goal_max)	draw_set_color(c_yellow);
	draw_sprite(spr_icon_class, ind_class, _x-_i/2 -5, _y);
	draw_text(_x+5, _y, _goal);
}
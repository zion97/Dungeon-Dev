// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_control_dep_ui()
{
	draw_set_alpha(1);
	draw_set_color(c_white);
	var _port_w	= uc_get_port_width();
	var _port_h	= uc_get_port_height();
	var _ind_x	= _port_w/2 - 960;
	
	draw_sprite_ext(spr_deploy_back, 0, _port_w/2, _port_h+100, 3, 3, 0, c_white, 1);
	
	var _mx		= device_mouse_x_to_gui(0);
	var _my		= device_mouse_y_to_gui(0);
	
	ind_button_num	= 0;
	for (var _i = 0; _i < 3; _i++)
	{
		if (_my > _port_h-216 + _i*70 && _my < _port_h - 159  + _i*70 && 
			_mx >_port_w/2 + 747 && _mx < _port_w/2 + 747 + 171)
		{
			ind_button_num	= _i+1;
		}
	}
	
	draw_sprite_ext(spr_deploy_button_esc, sc_is_same(1, ind_button_num), _port_w/2 + 747, _port_h-216, 3, 3, 0, c_white, 1);
	draw_sprite_ext(spr_deploy_button_enter, sc_is_same(2, ind_button_num), _port_w/2 + 747, _port_h-145, 3, 3, 0, c_white, 1);
	draw_sprite_ext(spr_deploy_button_space, sc_is_same(3, ind_button_num), _port_w/2 + 747, _port_h-74, 3, 3, 0, c_white, 1);
	
	if		(ind_dep_sel == 0)	{ sc_control_dep_ui_mob(_port_w, _port_h, _ind_x); }
	else if	(ind_dep_sel == 1)	{  }
	
	var _coin	= string(ind_cost) + "/" + string(stage_cost);
	draw_set_font(global.font_text[global.lan]);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(#25131A);
	//draw_sprite_ext(spr_icon_coin, 0, _port_w/2 + 540, _port_h-182, 2, 2, 0, c_white, 1);
	draw_text(_port_w/2 + 568, _port_h-180, _coin);
}


function sc_control_dep_ui_mob(_port_w, _port_h, _ind_x)
{
	var _arr_len = array_length(mob_list);
	if (_arr_len > 0)
	{
		var _dis	= 50;
		var _mx		= device_mouse_x_to_gui(0);
		var _my		= device_mouse_y_to_gui(0);
		ind_dep_num	= -1;
		for (var _i = 0; _i < _arr_len; _i++)
		{
			var _in	= 0;
			if (_my > _port_h-205 && _my < _port_h - 25 && 
				_mx > _ind_x + _dis + 14 + _i*200 && _mx < _ind_x + _dis + 146 + _i*200)
			{
				ind_dep_num	= mob_list[_i];
				_in			= 1;
			}
			draw_sprite_ext(spr_deploy_cap, _in, _ind_x + _dis + 80 + _i*200, _port_h-115, 
				3, 3, 0, c_white, 1);
			draw_sprite_ext(global.mob_struct[mob_list[_i]].ind_spr_stand, 0, _ind_x + _dis + 80 + _i*200, _port_h-148, 
				6, 6, 0, c_white, 1);
			
			var _l	= 0;
			draw_set_color(#000000);
			draw_set_font(global.font_num);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			_l	= string_width(global.mob_struct[mob_list[_i]].ind_hp_max);
			draw_sprite(spr_icon_hp, 0, _ind_x + _dis + 52 + _i*200 - _l/2, _port_h-80);
			draw_text(_ind_x + _dis + 62 + _i*200, _port_h-80, global.mob_struct[mob_list[_i]].ind_hp_max);
			
			_l	= string_width(global.mob_struct[mob_list[_i]].ind_atk_dmg);
			draw_sprite(spr_icon_dmg, 0, _ind_x + _dis + 100 + _i*200, _port_h-80);
			draw_text(_ind_x + _dis + 110 + _i*200 + _l/2, _port_h-80, global.mob_struct[mob_list[_i]].ind_atk_dmg);
			
			_l	= string_width(global.mob_struct[mob_list[_i]].ind_cost);
			draw_sprite(spr_icon_coin, 0, _ind_x + _dis + 70 + _i*200, _port_h-55);
			draw_text(_ind_x + _dis + 80 + _i*200 + _l/2, _port_h-55, global.mob_struct[mob_list[_i]].ind_cost);
		}
	}
}


function sc_is_same(_i1, _i2)
{
	if (_i1 == _i2)	return 1;
	return 0;
}

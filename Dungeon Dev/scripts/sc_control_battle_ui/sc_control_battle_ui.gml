// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_control_battle_ui()
{
	draw_set_alpha(1);
	draw_set_color(c_white);
	var _port_w	= uc_get_port_width();
	var _port_h	= uc_get_port_height();
	var _ind_x	= _port_w/2 - 960;
	
	if (ind_hero_num > 0)
	{
		for (var _i = 0; _i < ind_hero_num; _i++)
		{
			var _spr, _img, _hp, _goal, _class;
			var	_go		= false;
			with (ind_hero_arr[_i].ind_inst)
			{
				_spr	= sprite_index;
				_img	= image_index;
				_hp		= string(ind_hp) + " / " + string(ind_hp_max);
				_goal	= string(ind_goal)	+ " / " + string(ind_goal_max);
				_class	= ind_class;
				_go		= true;
			}
			if (!_go)	break;
			
			
			draw_sprite_ext(spr_hero_battle_ui, 0, _ind_x + 180 + _i*200, _port_h-115, 
				3, 3, 0, c_white, 1);
			draw_sprite_ext(_spr, _img, _ind_x + 180 + _i*200, _port_h-115-40, 
				6, 6, 0, c_white, 1);
				
			var _l	= 0;
			draw_set_color(#000000);
			draw_set_font(global.font_num);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			
			_l	= string_width(_hp);
			draw_sprite(spr_icon_hp, 0, _ind_x + 178 + _i*200 - _l/2, _port_h-85);
			draw_text(_ind_x + 185 + _i*200, _port_h-85, _hp);
			
			_l	= string_width(_goal);
			draw_sprite(spr_icon_class, _class, _ind_x + 175 + _i*200 - _l/2, _port_h-55);
			draw_text(_ind_x + 185 + _i*200, _port_h-55, _goal);
		}
	}
}
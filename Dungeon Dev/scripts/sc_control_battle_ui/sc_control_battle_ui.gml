// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_control_battle_ui()
{
	draw_set_alpha(1);
	draw_set_color(c_white);
	var _port_w	= uc_get_port_width();
	var _port_h	= uc_get_port_height();
	var _ind_x	= _port_w/2 - 960;
	var _mx		= device_mouse_x_to_gui(0);
	var _my		= device_mouse_y_to_gui(0);
	
	draw_sprite_ext(spr_battle_back, 0, _port_w/2, _port_h+100, 3, 3, 0, c_white, 1);
	
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
	draw_sprite_ext(spr_deploy_button_enter2, sc_is_same(2, ind_button_num), _port_w/2 + 747, _port_h-145, 3, 3, 0, c_white, 1);
	draw_sprite_ext(spr_deploy_button_space2, sc_is_same(3, ind_button_num), _port_w/2 + 747, _port_h-74, 3, 3, 0, c_white, 1);
	
	
	if (ind_hero_num > 0)
	{
		for (var _i = 0; _i < ind_hero_num; _i++)
		{
			var _dis	= 180;
			var _in		= 0;
			if (_my > _port_h-235 && _my < _port_h - 35 && 
				_mx > _ind_x + 114 + _i*200 && _mx < _ind_x + 246 + _i*200)
			{
				//ind_dep_num	= mob_list[_i];
				_in			= 1;
			}
			
			var _spr, _img, _hp, _hp_max, _goal, _goal_max, _class;
			var	_go		= false;
			with (ind_hero_arr[_i].ind_inst)
			{
				_spr		= sprite_index;
				_img		= image_index;
				_hp			= ind_hp;
				_hp_max		= ind_hp_max;
				_goal		= ind_goal;
				_goal_max	= ind_goal_max;
				_class		= ind_class;
				_go			= true;
				if (_in == 1)	ind_point	= true;
			}
			if (!_go)	break;
			
			
			
			//draw_sprite_ext(spr_hero_battle_ui, 0, _ind_x + 180 + _i*200, _port_h-115, 
			//	3, 3, 0, c_white, 1);
			draw_sprite_ext(spr_hero_battle_ui, _in, _ind_x + 180 + _i*_dis, _port_h-115, 
				3, 3, 0, c_white, 1);
			//draw_sprite_part_ext(_spr, _img, 18, 21, 108, 102, 
			//	_ind_x + 180 + _i*200 - 54, _port_h-115-40 - 51,  6, 6, c_white, 1);
			draw_sprite_ext(_spr, _img, _ind_x + 180 + _i*_dis, _port_h-115-39, 
				6, 6, 0, c_white, 1);
			
			
			draw_set_font(global.font_num);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			var _str;
			var _l	= 10;
			
			_l	= ceil(_hp / _hp_max * 100) / 100;
			if (_l > 0)
			{
				draw_set_color(c_green);
				//if (_l < 0.7)	draw_set_color(c_yellow);
				//if (_l < 0.3)	draw_set_color(c_red);
				draw_rectangle(_ind_x + 180 + _i*_dis - 54, _port_h-112 + 18, 
					_ind_x + 180 + _i*_dis - 54 + (107*_l), _port_h-112 + 41, false);
			}
			
			draw_set_color(c_white);
			if (_hp < 0)	_hp = 0;
			_str	= string(_hp) + "/" + string(_hp_max);
			draw_text(_ind_x + 180 + _i*_dis, _port_h-112 + 30, _str);
			
			
			_l	= floor(_goal / _goal_max * 100) / 100;
			if (_l > 0)
			{
				draw_set_color(c_red);
				if (_class == 1)	draw_set_color(c_blue);
				if (_class == 2)	draw_set_color(c_green);
				
				if (_l >= 1)	{ _l = 1;	draw_set_color(#888800); }
				draw_rectangle(_ind_x + 180 + _i*_dis - 54, _port_h-112 + 60, 
					_ind_x + 180 + _i*_dis - 54 + (107*_l), _port_h-112 + 83, false);
			}
			
			draw_set_color(c_white);
			_str	= string(_goal) + "/" + string(_goal_max);
			draw_text(_ind_x + 180 + _i*_dis, _port_h-112 + 72, _str);
			
			/*
			var _l	= 0;
			draw_set_color(#000000);
			draw_set_font(global.font_num);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			
			
			draw_set_color(#000000);
			if (_hp <= 0)	{ _hp = 0;	draw_set_color(#BB0000); }
			var _str	= string(_hp) + "/" + string(_hp_max);
			_l	= string_width(_str);
			draw_sprite(spr_icon_hp, 0, _ind_x + 178 + _i*200 - _l/2, _port_h-85);
			draw_text(_ind_x + 185 + _i*200, _port_h-85, _str);
			
			draw_set_color(#000000);
			if (_goal >= _goal_max)	{ draw_set_color(#BBBB00); }
			var _str	= string(_goal) + "/" + string(_goal_max);
			_l	= string_width(_str);
			draw_sprite(spr_icon_class, _class, _ind_x + 175 + _i*200 - _l/2, _port_h-55);
			draw_text(_ind_x + 185 + _i*200, _port_h-55, _str);
			*/
		}
	}
}
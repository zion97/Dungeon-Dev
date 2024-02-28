// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_control_dep_ui()
{
	var _port_w	= uc_get_port_width();
	var _port_h	= uc_get_port_height();
	draw_sprite_ext(spr_deploy_back, 0, _port_w/2, _port_h+100, 3, 3, 0, c_white, 1);
	
	var _arr_len = array_length(mob_list);
	if (_arr_len > 0)
	{
		var _mx		= device_mouse_x_to_gui(0);
		var _my		= device_mouse_y_to_gui(0);
		ind_dep_num	= -1;
		for (var _i = 0; _i < _arr_len; _i++)
		{
			var _in	= 0;
			if (_my > _port_h-205 && _my < _port_h - 25 && _mx > 114 + _i*200 && _mx < 246 + _i*200)
			{
				ind_dep_num	= _i;
				_in			= 1;
			}
			draw_sprite_ext(spr_deploy_cap, _in, 180 + _i*200, _port_h-115, 
				3, 3, 0, c_white, 1);
			draw_sprite_ext(global.mob_struct[mob_list[_i]].ind_spr_stand, 0, 180 + _i*200, _port_h-150, 
				6, 6, 0, c_white, 1);
				
			draw_set_color(#000000);
			draw_text(180 + _i*200, _port_h-80, global.mob_struct[mob_list[_i]].ind_hp_max);
			draw_text(180 + _i*200, _port_h-50, global.mob_struct[mob_list[_i]].ind_atk_dmg);
		}
	}
}



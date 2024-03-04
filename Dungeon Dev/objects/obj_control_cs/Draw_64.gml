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
	draw_sprite_ext(ind_pic2, 0, _port_w-700, _port_h, 1, 1, 0, #505050, 1);
	
	draw_set_color(c_white);
	draw_sprite(ind_pic, 0, _port_w-700, _port_h);
	draw_sprite_ext(spr_talk_back, 0, _port_w/2, _port_h+100, 3, 3, 0, c_white, 1);
	
	//draw_sprite_ext(spr_icon_mouse_l, 0, _port_w/2+850, _port_h-50, 3, 3, 0, c_white, 1);
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
else if (ind_state == 2)
{
	var _mx	= device_mouse_x_to_gui(0);
	var _my	= device_mouse_y_to_gui(0);
	
	draw_set_font(global.font_name[global.lan]);
	draw_set_color(c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_text(_port_w/2, _port_h-200, ind_name);
	draw_set_font(global.font_text[global.lan]);
	var _y	= 30;
	if (ind_que_num == 3) _y = 0;
	draw_sprite_ext(spr_cs_que, 0, _port_w/2, _port_h-200+_y + 60*ind_que_sel, 3, 3, 0, c_white, 1);
	for (var _i = 0; _i < ind_que_num; _i++)
	{
		draw_text(_port_w/2, _port_h-200+_y + 60*_i, ind_que[_i]);
		if (_mx > _port_w/2 - 800 && _mx < _port_w/2 + 800 && 
			_my > _port_h-200+_y + 60*_i && _my < _port_h-200+_y + 60*_i +48)
		{
			ind_que_sel	= _i;
			if (mouse_button == mb_left)
			{
				alarm[2] = 1;
			}
		}
	}
}
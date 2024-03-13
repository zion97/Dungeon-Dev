/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
//draw_sprite(spr_talk_maw, 0, 1000, 0);
if (ind_state == 0) 
{
	sc_control_dep_ui();
}
else if (ind_state == 1)
{
	draw_sprite_ext(spr_icon_re, 0, uc_get_port_width()/2, uc_get_port_height()-100, 3, 3, 0, c_white, 1);
}

var _i = 0;
with (obj_pa_deploy_character)
{
	_i++;
}
//draw_text(50, 50, _i);
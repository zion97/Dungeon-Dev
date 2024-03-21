// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_control_set_game_spd(_mode = 0)
{
	game_set_speed(60*(1+_mode), gamespeed_fps);
	with (obj_pa_character)
	{
		image_speed	= (1 + _mode);
	}
	global.game_spd	= _mode;
}
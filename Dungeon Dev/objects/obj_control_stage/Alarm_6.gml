/// @description Enter 입력
// 이 에디터에 코드를 작성할 수 있습니다
if (ind_state == 0)
{
	with (obj_deploy_mob_mouse)	{ instance_destroy(); }
	
	with (obj_pa_character)
	{
		instance_destroy();
	}
	with (obj_pa_deploy)
	{
		alarm[0]	= 1;
	}
	
	var _layer	= layer_get_id("Deploy");
	layer_set_visible(_layer, false);
	ind_state = 1;
}
else if (!ind_clear)
{
	with (obj_pa_character)
	{
		instance_destroy();
	}
	with (obj_pa_range_atk)
	{
		instance_destroy();
	}
	var _layer	= layer_get_id("Deploy");
	layer_set_visible(_layer, true);
	
	arr_cell_opened = []; 
	arr_path = [];
	for(var _w = 0; _w < width; _w++) {
		for(var _h = 0; _h < height; _h++) {
			map[@ _w][@ _h].reset_father();
		}
	}
	
	ind_state	= 0;
	alarm[2]	= -10;
}
sc_control_set_game_spd();
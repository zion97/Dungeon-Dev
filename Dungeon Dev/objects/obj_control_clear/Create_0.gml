/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
sc_create_stage_camera();
if (global.ind_clear < clear_num)
{
	global.ind_clear	= clear_num;
	sc_vsls_save_value("ind_clear", global.ind_clear);
}
global.is_fade	= true;
sc_set_theme();
ind_func[sc_get_theme_num(clear_num)]();
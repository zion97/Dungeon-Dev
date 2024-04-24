/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
ind_select	= false;
ind_active	= true;
//var _file	= "text_data\\main_txt.csv";
//text_file	= load_csv(_file);
//ind_text	= sc_csv_to_string(text_file, global.lan, 1 + ind_button);

sc_set_theme();

if (ind_button == 0)	{ sprite_index	= spr_theme_button_1; }
if (ind_button == 1)	{ sprite_index	= spr_theme_button_2; }

if (ind_button > sc_get_theme_num(global.ind_clear)+1)
{
	sprite_index	= spr_theme_button_lock;
	ind_active		= false;
}
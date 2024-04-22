/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
ind_select	= false;
ind_active	= true;
//var _file	= "text_data\\main_txt.csv";
//text_file	= load_csv(_file);
//ind_text	= sc_csv_to_string(text_file, global.lan, 1 + ind_button);

ind_func	= array_create(3);

ind_func[0]	= function() { room_goto(rm_theme01); }
ind_func[1]	= function() { room_goto(rm_theme02); }
ind_func[2]	= function() { room_goto(rm_stage01_01cs); }

if (ind_button == 0)	{ sprite_index	= spr_theme_button_0; }

if (ind_button > sc_get_theme_num(global.ind_clear))
{
	sprite_index	= spr_theme_button_lock;
	ind_active		= false;
}
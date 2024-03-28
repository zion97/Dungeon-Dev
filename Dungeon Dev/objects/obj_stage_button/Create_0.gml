/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
ind_select	= false;
ind_active	= true;

ind_img_num	= ind_num*2 - 2;

if (global.ind_clear < ind_button)
{
	ind_active		= false;
	sprite_index	= spr_stage_button_lock;
}
//var _file	= "text_data\\main_txt.csv";
//text_file	= load_csv(_file);
//ind_text	= sc_csv_to_string(text_file, global.lan, 1 + ind_button);


//if (ind_button == 0)	{ sprite_index	= spr_main_button_0; }
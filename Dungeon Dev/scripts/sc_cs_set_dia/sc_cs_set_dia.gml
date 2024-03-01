// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_set_dia(_line, _pic = spr_dump, _pic_num = 0)
{
	ind_name	= sc_csv_to_string(text_file, csv_num, _line);
	ind_text	= sc_csv_to_string(text_file, csv_num+1, _line);
	
	ind_pic		= _pic;
	ind_pin_num	= _pic_num;
}
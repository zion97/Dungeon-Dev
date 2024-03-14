// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_set_dia(_line, _nxt = ind_process + 1, _pic = spr_dump, _pic2 = spr_dump)
{
	ind_name		= sc_csv_to_string(text_file, csv_num + 2*global.lan, _line);
	ind_text		= sc_csv_to_string(text_file, csv_num+1 + 2*global.lan, _line);
					
	ind_pic			= _pic;
	ind_pic2		= _pic2;
	
	ind_que_nxt[0]	= _nxt;
	ind_que_sel		= 0;
	
	SE_Play(s_cs_talk);
	ind_state		= 1;
}
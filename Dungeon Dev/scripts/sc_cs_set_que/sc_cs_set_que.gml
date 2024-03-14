// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_cs_set_que(_line, _num, _nxt, _pic = spr_dump, _pic2 = spr_dump)
{
	ind_que_num	= _num;
	
	ind_name	= sc_csv_to_string(text_file, csv_num + 2*global.lan, _line);

	for (var _i = 0; _i < _num; _i++)
	{
		ind_que[_i]		= sc_csv_to_string(text_file, csv_num+1 + 2*global.lan, _line+_i);
		ind_que_nxt[_i]	= _nxt[_i];
	}
	
	ind_pic		= _pic;
	ind_pic2	= _pic2;
	
	SE_Play(s_cs_talk);
	ind_state	= 2;
}
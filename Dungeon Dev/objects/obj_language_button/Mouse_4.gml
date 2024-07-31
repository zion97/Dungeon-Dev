/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
global.lan		= lan_num;
sc_vsls_save_value("ind_lan", lan_num);
/*
var _ind		= 0;
global.rm_index	= _ind;
room_goto(global.rm_stage[_ind]);
*/
room_goto(rm_main);
/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
sc_data_global();
sc_data_load();
sc_create_stage_camera();

sc_control_set_game_spd();
//global.ind_clear	= 120;
image_alpha	= 0;

var _time	= 80;

alarm[0]	= _time+40;
alarm[1]	= _time;
alarm[2]	= 1;
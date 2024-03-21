/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
sc_pathfind_create();
sc_control_tile();

sc_create_stage_camera();
sc_control_set_game_spd();

ind_dep_num		= -1;
ind_alp			= 1
ind_state		= 0;
ind_clear		= false;
ind_cost		= 0;

ind_hero_arr	= array_create(10, noone);
ind_hero_num	= 0;

BGM_Play(music_mr,,10);

alarm[0]	= 1;
alarm[3]	= 1;
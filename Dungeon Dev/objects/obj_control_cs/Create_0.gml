/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _file	= "text_data\\" + file_name;
text_file	= load_csv(_file);

sc_control_tile();
sc_create_stage_camera();

ind_process	= 0;
ind_state	= 0;

ind_name	= "";
ind_text	= "";
ind_que		= array_create(3, "");
ind_que_num	= 0;
ind_que_sel	= 0;
ind_que_nxt	= array_create(3, 0);
ind_pic		= spr_dump;
ind_pic2	= spr_dump;

ind_alp		= 1;
alarm[0]	= 1;
alarm[2]	= 60;
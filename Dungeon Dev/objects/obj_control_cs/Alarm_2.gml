/// @description 다음 state
// 이 에디터에 코드를 작성할 수 있습니다
with (obj_cs_talk)	{ instance_destroy(); }
ind_process = ind_que_nxt[ind_que_sel];
cs_sc();
alarm[3]	= 20;
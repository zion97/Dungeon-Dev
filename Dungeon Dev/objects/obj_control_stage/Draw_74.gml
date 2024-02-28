/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_sprite(spr_talk_maw, 0, 1000, 0);
sc_control_dep_ui();


var _i = 0;
with (obj_pa_deploy)
{
	_i++;
}
draw_text(50, 50, _i);
// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_create_main_camera()
{
	instance_create_depth(0, 0, 0, Camera_main);
	uc_set_x(300);
	uc_set_target_x(300);
}
// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_goto_pause_room(_room)	//일시정지가 필요할 때 호출할 함수

{

	room_persistent = true;		//룸 현재 상태 저장하도록 내장 변수 설정

	global.roomBuffer = room;	//일시정지 해제 때 돌아올 룸의 ID값 저장


	var _cam_width	= 640;	//카메라 너비

	var _cam_height = 360;	//카메라 높이



	if (buffer_exists(global.screenBuffer)) buffer_delete(global.screenBuffer);	//예외처리, 이전 버퍼가 남아있으면 버퍼 삭제

	global.screenBuffer = buffer_create(_cam_width * _cam_height * 4, buffer_grow, 1);	//버퍼 생성 및 크기 설정

	var _surf = surface_create(_cam_width, _cam_height);				//서피스 생성

	surface_copy(_surf,0,0,application_surface);						//현재 화면을 서피스에 붙여넣기

	buffer_get_surface(global.screenBuffer, _surf, 0);					//버퍼에 서피스를 붙여넣기

	surface_free(_surf);												//임시 서피스 제거


	room_goto(_room);	//룸 이동

}



function sc_pause_room_control_create()		//일시정지용 룸의 컨트롤 오브젝트 create 이벤트에서 호출

{

	surf	= -1;	//서피스

}



function sc_pause_room_control_draw()	//일시정지용 룸의 컨트롤 오브젝트 draw 이벤트에서 호출

{

	var _cam_width	= 640;	//카메라 너비

	var _cam_height = 360;	//카메라 높이


	if (!surface_exists(surf)) //서피스가 없을 때

	{

		surf = surface_create(_cam_width, _cam_height);		//서피스 생성

		buffer_set_surface(global.screenBuffer, surf, 0);	//버퍼에 저장된 값을 서피스에 붙여넣기

	}


	draw_surface(surf, 0, 0);	//서피스 그리기, 뒤에 0, 0은 좌표로, 게임이 가변 해상도라면 알아서 조정하기

}
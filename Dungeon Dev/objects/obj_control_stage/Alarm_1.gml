/// @description 페이드아웃
// 이 에디터에 코드를 작성할 수 있습니다
ind_alp	+= 0.025;
if (ind_alp < 1)	{ alarm[1] = 1; }
else				{ room_goto(next_room); }
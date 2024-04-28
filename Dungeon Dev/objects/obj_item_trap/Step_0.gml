/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (!ind_active)
{
	ind_inst	= collision_circle(x, y, 12, obj_pa_character, true, true);
	if (ind_inst != noone)
	{
		ind_active	= true;
	}
}
else
{

	
	if (ind_process < 6)
	{
		if (ind_process == 0)
		{
			image_index	= 1;
			with (obj_control_stage)
			{
				alarm[2]	= 1;
			}
			
			SE_Play(s_trap);
			
			var _dmg	= 50;
			with(ind_inst)
			{
				if (ind_hp <= 0) return;
				ind_hp		-= _dmg;
				image_blend	= c_red;
				alarm[1]	= 6;
				if (ind_class == 1)	ind_goal += _dmg;
			}
		}
	}
	else if (ind_process < 12)	{ image_index	= 2; }
	else if (ind_process < 18)	{ image_index	= 3; }
	else if (ind_process < 28)	{ image_alpha -= 0.1; }
	else						{ instance_destroy(); }
	ind_process++;
}
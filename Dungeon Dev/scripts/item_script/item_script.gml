// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_item_heal()
{
	with (ind_inst)
	{
		ind_hp	+= 50;
		if (ind_hp > ind_hp_max)
		{
			ind_hp = ind_hp_max;
		}
	}
}
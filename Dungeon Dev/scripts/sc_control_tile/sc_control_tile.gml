// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_control_tile()
{
	var _tile		= layer_tilemap_get_id("Tile");
	var _tile_col	= layer_tilemap_get_id("Tile_col");
	
	var _w			= tilemap_get_width(_tile_col);
	var _h			= tilemap_get_height(_tile_col);
	
	for (var _x = 0; _x < _w; _x++)
	{
		for (var _y = 0; _y < _h; _y++)
		{
			var _p1	= tilemap_get(_tile_col, _x-1, _y-1);
			var _p2	= tilemap_get(_tile_col, _x, _y-1);
			var _p3	= tilemap_get(_tile_col, _x+1, _y-1);
			var _p4	= tilemap_get(_tile_col, _x-1, _y);
			var _p5	= tilemap_get(_tile_col, _x, _y);
			var _p6	= tilemap_get(_tile_col, _x+1, _y);
			var _p7	= tilemap_get(_tile_col, _x-1, _y+1);
			var _p8	= tilemap_get(_tile_col, _x, _y+1);
			var _p9	= tilemap_get(_tile_col, _x+1, _y+1);
			
			if (_p5 == 0)
			{
				var _i	= irandom_range(65, 77);
				tilemap_set(_tile, _i, _x, _y);
			}
			else
			{
				if (_p2 == 0)
				{
					if (_p8 == 0)
					{
						if (_p4 == 0)
						{
							if (_p6 == 0)
							{
								tilemap_set(_tile, 4, _x, _y);
							}
							else
							{
								tilemap_set(_tile, 1, _x, _y);
							}
						}
						else
						{
							if (_p6 == 0)
							{
								tilemap_set(_tile, 3, _x, _y);
							}
							else
							{
								tilemap_set(_tile, 2, _x, _y);
							}
						}
					}
					else
					{
						if (_p4 == 0)
						{
							if (_p6 == 0)
							{
								tilemap_set(_tile, 20, _x, _y);
							}
							else
							{
								if (_p9 == 0)
								{
									tilemap_set(_tile, 11, _x, _y);
								}
								else
								{
									tilemap_set(_tile, 17, _x, _y);
								}
							}
						}
						else
						{
							if (_p6 == 0)
							{
								if (_p7 == 0)
								{
									tilemap_set(_tile, 12, _x, _y);
								}
								else
								{
									tilemap_set(_tile, 19, _x, _y);
								}
							}
							else
							{
								if (_p7 == 0)
								{
									if (_p9 == 0)	{ tilemap_set(_tile, 41, _x, _y); }
									else			{ tilemap_set(_tile, 9, _x, _y); }
								}
								else
								{
									if (_p9 == 0)	{ tilemap_set(_tile, 25, _x, _y); }
									else			{ tilemap_set(_tile, 18, _x, _y); }
								}
							}
						}
					}
				}
				else
				{
					//
					if (_p8 == 0)
					{
						if (_p4 == 0)
						{
							if (_p6 == 0)
							{
								tilemap_set(_tile, 52, _x, _y);
							}
							else
							{
								if (_p3 == 0)	{ tilemap_set(_tile, 27, _x, _y); }
								else			{ tilemap_set(_tile, 49, _x, _y); }
							}
						}
						else
						{
							if (_p6 == 0)
							{
								if (_p1 == 0)	{ tilemap_set(_tile, 28, _x, _y); }
								else			{ tilemap_set(_tile, 51, _x, _y); }
							}
							else
							{
								if (_p1 == 0)
								{
									if (_p3 == 0)	{ tilemap_set(_tile, 42, _x, _y); }
									else			{ tilemap_set(_tile, 10, _x, _y); }
								}
								else
								{
									if (_p3 == 0)	{ tilemap_set(_tile, 26, _x, _y); }
									else			{ tilemap_set(_tile, 50, _x, _y); }
								}
							}
						}
					}
					else
					{
						if (_p4 == 0)
						{
							if (_p6 == 0)
							{
								tilemap_set(_tile, 36, _x, _y);
							}
							else
							{
								if (_p3 == 0)
								{
									if (_p9 == 0)	{ tilemap_set(_tile, 39, _x, _y); }
									else			{ tilemap_set(_tile, 7, _x, _y); }
								}
								else
								{
									if (_p9 == 0)	{ tilemap_set(_tile, 23, _x, _y); }
									else			{ tilemap_set(_tile, 33, _x, _y); }
								}
							}
						}
						else
						{
							if (_p6 == 0)
							{
								if (_p1 == 0)
								{
									if (_p7 == 0)	{ tilemap_set(_tile, 40, _x, _y); }
									else			{ tilemap_set(_tile, 8, _x, _y); }
								}
								else
								{
									if (_p7 == 0)	{ tilemap_set(_tile, 24, _x, _y); }
									else			{ tilemap_set(_tile, 35, _x, _y); }
								}
							}
							else
							{
								if (_p1 == 0)
								{
									if (_p3 == 0)	
									{ 
										if (_p7 == 0)
										{
											if (_p9 == 0)	{ tilemap_set(_tile, 59, _x, _y); }
											else			{ tilemap_set(_tile, 57, _x, _y); }
										}
										else
										{
											if (_p9 == 0)	{ tilemap_set(_tile, 58, _x, _y); }
											else			{ tilemap_set(_tile, 53, _x, _y); }
										}
									}
									else
									{
										if (_p7 == 0)
										{
											if (_p9 == 0)	{ tilemap_set(_tile, 55, _x, _y); }
											else			{ tilemap_set(_tile, 37, _x, _y); }
										}
										else
										{
											if (_p9 == 0)	{ tilemap_set(_tile, 43, _x, _y); }
											else			{ tilemap_set(_tile, 5, _x, _y); }
										}
									}
								}
								else
								{
									if (_p3 == 0)	
									{ 
										if (_p7 == 0)
										{
											if (_p9 == 0)	{ tilemap_set(_tile, 56, _x, _y); }
											else			{ tilemap_set(_tile, 44, _x, _y); }
										}
										else
										{
											if (_p9 == 0)	{ tilemap_set(_tile, 38, _x, _y); }
											else			{ tilemap_set(_tile, 6, _x, _y); }
										}
									}
									else
									{
										if (_p7 == 0)
										{
											if (_p9 == 0)	{ tilemap_set(_tile, 54, _x, _y); }
											else			{ tilemap_set(_tile, 21, _x, _y); }
										}
										else
										{
											if (_p9 == 0)	{ tilemap_set(_tile, 22, _x, _y); }
											else			{ tilemap_set(_tile, 34, _x, _y); }
										}
									}
								}
							}
						}
					}
					//
				}
			}
		}
	}
}
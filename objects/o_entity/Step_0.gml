
//gravity and collision
if (!global.gamepaused)
{
	yspeed = yspeed + grav;
	
	var _oneway_plat = instance_place(x, y + max(1, yspeed), o_platpass);
	if (_oneway_plat and bbox_bottom <= _oneway_plat.bbox_top)
	{
		if (yspeed > 0)
		{
			while (!place_meeting(x, y + sign(yspeed), o_platpass))
			{
				y += sign(yspeed);
			}
			yspeed = 0;
		}
	}	
		


		if (place_meeting(x + xspeed, y, o_wall))
		{
			while (!place_meeting(x + sign(xspeed), y, o_wall))
			{
				x = x + sign(xspeed);
			}
			xspeed = 0;
		}
		x += xspeed;

		if (place_meeting(x, y + yspeed, o_wall))
		{
			while (!place_meeting(x, y + sign(yspeed), o_wall))
			{
				y = y + sign(yspeed);
			}
			yspeed = 0;
		}
		y += yspeed;

}
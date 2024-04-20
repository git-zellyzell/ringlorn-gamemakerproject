yspeed = yspeed + grav;

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
	grav = 0;
}
y += yspeed;
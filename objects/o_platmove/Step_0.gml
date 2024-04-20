mask_index = s_platmove

move_collide(plat_speed * dir, 0);
if place_meeting(x + dir, y, o_wall)
{
	dir *= -1;
}
if (instance_exists(o_player))
{
	if (round(o_player.y + (o_player.sprite_height / 2)) > y)
	{
		mask_index = -1;
	} else
		{
			mask_index = s_platmove;
			if place_meeting(x, y - 1, o_player)
			{
				o_player.x += o_platmove.plat_speed * o_platmove.dir;
			}
		}
}
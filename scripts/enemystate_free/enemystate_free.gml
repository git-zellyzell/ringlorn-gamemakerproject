function enemystate_free()
{
	
	//free state is for enemy that are stationary if not aggro'd. enemies that move naturally should use the wander state.
	set_state_sprite(my_sprite_ready, my_anim, my_index);
	
	//check if the player is in range
	if (aggro_check++ >= aggro_check_duration)
	{

		if (instance_exists(o_player))
		{
			//locate the player. if the player is too high/low OR too far: don't change
			var direction_to_player = point_direction(x,y, o_player.x, o_player.y);
			var distance_to_player = point_distance(x,y, o_player.x, o_player.y);
			var pd = round(direction_to_player/45);
			pd = pd mod 8;
			if pd == 0
			{
				image_xscale = 1;
			}else image_xscale = -1;
			if (distance_to_player <= ready_dist) and  (pd = 0 or pd = 4)
			//player in range? chase player.
			{
				enemystate = ENEMYSTATE.READY;
			}
		}
		aggro_check = 0;
	}
}
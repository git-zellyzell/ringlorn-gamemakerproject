
function enemystate_wander()
{
	//wander state is for enemies that should move "naturally" when not aggro'd. enemies that are stationary (ie: guards or watchmen) should use the free state.
	
	//if you've walked far enough take a break.
	if travelled_distance >= wander_distance
	{
		x += 0;
		wait += 1;
		set_state_sprite(my_sprite, my_anim, my_index);
		
		//if you've taken a break it's time to move again.
		if wait >= wait_duration
		{
			//which direction I will go.
			image_xscale *= irandom_range(-1, 1);
			if image_xscale == 0
			{
				image_xscale = 1;
			}
			x += enemy_speed * image_xscale;
			image_speed = my_anim;
			wait = 0;
			travelled_distance = 0;
			wander_distance = irandom_range(40, 120);
		}
	}
	else
	{
		//on spawn what do I do?
		set_state_sprite(wander_sprite, 1.3, my_index)
		x += enemy_speed * image_xscale;
		travelled_distance += 1;
	}
	//if i walk into a wall. turn around and walk away from it.
	if place_meeting(x + (enemy_speed * 10) * image_xscale, y, o_wall)
	{
		image_xscale *= -1;
		travelled_distance = -10;
	}
	
	//looking for the player.
	if (++aggro_check >= aggro_check_duration)
	{
		aggro_check = 0;
		if (instance_exists(o_player))
		{
			var direction_to_player = point_direction(x,y, o_player.x, o_player.y);
			var distance_to_player = point_distance(x,y, o_player.x, o_player.y);
			var pd = round(direction_to_player/45);
			pd = pd mod 8;
			
			//if the player is in range. chase the player
			if (distance_to_player <= aggro_dist) and  (pd = 0 or pd = 4)
			{
				enemystate = ENEMYSTATE.CHASE;
				target = o_player;
			}
		}
	}
}
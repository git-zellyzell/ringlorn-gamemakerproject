// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemystate_ready()
{
	//ready state is identical to free state. it shows that the player is close to an enemy that is ready to attack but not quite close enough to aggro them.
	set_state_sprite(my_sprite_ready, my_anim, 0);
	
	//check if the player is in range
	if (++aggro_check >= aggro_check_duration)
	{

		if (instance_exists(o_player))
		{
			//locate the player. if the player is too high/low OR too far: don't change
			var direction_to_player = point_direction(x,y, o_player.x, o_player.y);
			var distance_to_player = point_distance(x,y, o_player.x, o_player.y);
			var pd = round(direction_to_player/45);
			pd = pd mod 8;
			
			if (distance_to_player <= aggro_dist) and  (pd = 0 or pd = 4)
			//player in range? chase player.
			{
				enemystate = ENEMYSTATE.CHASE;
				
			}
		}
		aggro_check = 0;
	}
}
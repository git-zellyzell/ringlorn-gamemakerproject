function enemystate_chase()
{
	if instance_exists(o_player)
	{
		set_state_sprite(my_sprite_chase, my_anim, my_index);
		image_xscale = sign(o_player.x - x);
		if image_xscale == 0
		{
			image_xscale = 1;
		}
		
	//	var direction_facing = image_xscale;
		var direction_to_player = point_direction(x,y, o_player.x, o_player.y);
		var distance_to_player = point_distance(x,y, o_player.x, o_player.y);
		var pd = round(direction_to_player/45);
		pd = pd mod 8;
		//player out of range?
		if distance_to_player >= escape_dist 
		{
			enemystate = my_default_state;
		}
		//as long as the player is in range try to close the distance and attack.

		if distance_to_player <= melee_dist
		{
			xspeed = 0;
			set_state_sprite(my_sprite_ready, my_anim, my_index);
			enemystate =ENEMYSTATE.COMBO_1;
		}else
		{
			move_collide(chase_speed * image_xscale, 0)
		}
	}
}

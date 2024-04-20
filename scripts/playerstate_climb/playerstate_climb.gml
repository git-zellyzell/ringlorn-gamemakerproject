function playerstate_climb() {
	o_player.grav = 0;
	if input.up
	{
		set_state_sprite(s_RavenClimb, 1.04, 0)
		move_collide(0, -climb_speed)
		if not place_meeting(x, y, o_Ladder)
		{
		o_player.grav = 1;
		state = PLAYERSTATE.FREE;
		}
	}

	
	if input.down 
	{
		set_state_sprite(s_RavenClimb, 1.04, 0)
		move_collide(0, climb_speed)
		o_player.grav = 0;
		if place_meeting(x, y + climb_speed, o_wall)
		{
			state = PLAYERSTATE.FREE;
		}
	}
	
	
		
	if not input.down and not input.up
		{
			set_state_sprite(s_RavenClimbIdle, 0, 0)
		}

	
}

function playerstate_dodge2() 
{
	set_state_sprite(s_RavenDash, .5, 1);
	
	if image_xscale ==1
	{
		move_collide(dark_roll_speed, 0);
	}
	
	if image_xscale == -1
	{
		move_collide(-dark_roll_speed,0);
	}
		
	if animation_end()
	{
		stancetimer = max_stancetimer;
		set_state_sprite(s_stanceIdle, 1, 0);
		state = PLAYERSTATE.DARK_ULT;
	}
}
function playerstate_dodge() 
{
	grav = 0;
	set_state_sprite(s_RavenDash, .5, 1);
	xspeed = roll_speed * image_xscale;
	
	if input.magic
	{
		xspeed = (roll_speed * 2) * image_xscale;
		state = PLAYERSTATE.DASH_1
	}
	if animation_end()
	{
		stancetimer = max_stancetimer;
		set_state_sprite(s_stanceIdle, 1, 0);
		state = PLAYERSTATE.STANCE;
	}
}
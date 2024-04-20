function playerstate_open() 
{
	set_state_sprite(s_RavenTurnDark, 1, 0);
	if animation_hit_frame(7) 
	{
		state = PLAYERSTATE.SHADOWFREE;
	}
}

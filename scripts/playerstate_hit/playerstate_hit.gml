///@arg knockback_sprite
///@arg next_state
function playerstate_hit(argument0, argument1) 
{
		if stagger >= 1
		{
			knockback_state(s_RavenStun, PLAYERSTATE.FREE);
		}


		if stagger < 1
		{
			state = PLAYERSTATE.FREE;
		}
}

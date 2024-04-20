function enemystate_hit()
{
	if stagger >= 1
	{
		knockback_state(knockback_sprite, ENEMYSTATE.CHASE);
	}


	if stagger < 1
	{
		enemystate = ENEMYSTATE.CHASE;
	}
}



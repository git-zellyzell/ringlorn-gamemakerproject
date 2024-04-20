// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemystate_parried()
{	
	stun_timer -= 1;
	set_state_sprite(knockback_sprite, 0, 0);
	if stun_timer <= 0 
	{
		set_state_sprite(s_wwolfidle, 1, 0)
		enemystate = ENEMYSTATE.CHASE
	}
}
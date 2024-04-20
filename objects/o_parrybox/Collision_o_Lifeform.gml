
if creator == noone or creator == other
{
	exit;
}

process_attack(sprite_index, damage, damageeffect);
other.state = PLAYERSTATE.HIT;
other.enemystate = ENEMYSTATE.HIT;
other.knockback_speed = knockback * image_xscale;


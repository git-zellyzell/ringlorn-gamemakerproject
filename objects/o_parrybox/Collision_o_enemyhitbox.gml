if creator == noone or creator == other
{
	exit;
}

other.creator.stun_timer = other.creator.stun_length;
other.creator.enemystate = ENEMYSTATE.PARRIED;
instance_destroy(other);

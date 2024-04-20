
if creator == noone or creator == other
{
	exit;
}
if o_player.invincible = false
{
	process_attack(sprite_index, damage, damage_effect);
	o_player.state = PLAYERSTATE.HIT;
	o_player.knockback_speed = knockback * image_xscale;
	global.player_combo = 0;
}

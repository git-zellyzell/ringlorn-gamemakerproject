function playerstate_combo_5(weapon_struct, combo_num)
{
	set_state_sprite(combo_num._anim, weapon_struct.my_spd, 0);
	
	if animation_hit_frame(combo_num._start)
	{
		xspeed = 0;
		x += 12 * image_xscale;
		create_hitbox(weapon_struct, combo_num, x, y, self, o_hitbox, image_xscale);
	}

	if (animation_end())
	{
		sprite_index =s_RavenIdle;
		state = PLAYERSTATE.FREE;
	}
}

function playerstate_combo_2(weapon_struct, combo_num)
{
	set_state_sprite(combo_num._anim, weapon_struct.my_spd, 0);
	if global.conservation.active = false

	if animation_hit_frame(combo_num._start)
	{
		xspeed = 0;
		create_hitbox(weapon_struct, combo_num, x, y, self, o_hitbox, image_xscale);
	}

	if (input.heavyattack) and (frame_range(combo_num._fr1, combo_num._fr2))
	{
		if (global.one_more.active = true) heavy_damage_modifier *= 1.1;//one more time
		state = combo_num._next;
	}
	
	if (input.magic) and (frame_range(combo_num._fr1, combo_num._fr2))
	{
		state = PLAYERSTATE.SMASH_1;
	}
	
	if (animation_end())
	{
		sprite_index =s_RavenIdle;
		state = PLAYERSTATE.FREE;
		
	}
}

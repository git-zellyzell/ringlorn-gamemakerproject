function playerstate_combo_1(weapon_struct, combo_num)
{
	sp_regen = 0;
	set_state_sprite(combo_num._anim, weapon_struct.my_spd + bonus_speed, 0);
	
	if animation_hit_frame(combo_num._start)
	{
		xspeed = 0;
		x += 0 * image_xscale;
		create_hitbox(weapon_struct, combo_num, x, y, self, o_hitbox, image_xscale);
	}

	if (input.attack) and (frame_range(combo_num._fr1, combo_num._fr2))
	{
		state = combo_num._next;
	}
	//perfect timing
	if (input.attack) and (frame_range(combo_num._fl1, combo_num._fl2))
	{
		if (global.expert_timing.active = true) damage_modifier += .05; //expert timing
		state = combo_num._flnext;
	}
	
	if (input.heavyattack) and (frame_range(combo_num._fr1, combo_num._fr2))
	{
		state = combo_num._hcombo;
	}
	
	if (animation_end())
	{
		sprite_index =s_RavenIdle;
		state = PLAYERSTATE.FREE;
		;
	}
}

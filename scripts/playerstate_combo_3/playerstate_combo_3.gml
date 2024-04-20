function playerstate_combo_3(weapon_struct, combo_num)
{
	set_state_sprite(combo_num._anim, weapon_struct.my_spd, 0);
	
	if animation_hit_frame(0)
	{
		xspeed = 0;
		invincible = true;
		
		create_hitbox(weapon_struct, combo_num, x, y, self, o_parrybox, image_xscale);
	}

	if (animation_end())
	{
		invincible = false;
		
		sprite_index =s_RavenIdle;
		state = PLAYERSTATE.FREE;
	}
}

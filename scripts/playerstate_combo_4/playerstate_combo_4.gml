
function playerstate_combo_4(weapon_struct, combo_num)
{
	set_state_sprite(combo_num._anim, weapon_struct.my_spd, 0)
	
	if animation_hit_frame(combo_num._start)
	{
		create_hitbox(weapon_struct, combo_num, x, y, self, o_hitbox, image_xscale)
	}
	
	if (input.magic) and (frame_range(combo_num._fr1, combo_num._fr2))
	{
		state = combo_num._next;
	}
	
	if (animation_end())
	{
		sprite_index =s_RavenIdle;
		state = PLAYERSTATE.FREE;
	}
}